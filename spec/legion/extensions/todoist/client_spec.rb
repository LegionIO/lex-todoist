# frozen_string_literal: true

RSpec.describe Legion::Extensions::Todoist::Client do
  let(:mock_conn) { instance_double(Faraday::Connection) }

  before do
    allow(Faraday).to receive(:new).and_return(mock_conn)
  end

  describe '#initialize' do
    it 'stores token in opts' do
      client = described_class.new(token: 'test-token')
      expect(client.opts[:token]).to eq('test-token')
    end
  end

  describe 'project operations' do
    let(:client) { described_class.new(token: 'test') }

    it 'lists projects' do
      allow(mock_conn).to receive(:get).and_return(double(body: [{ 'id' => '1', 'name' => 'Inbox' }]))
      result = client.list_projects
      expect(result[:projects]).to be_an(Array)
    end

    it 'creates a project' do
      allow(mock_conn).to receive(:post).and_return(double(body: { 'id' => '2', 'name' => 'New' }))
      result = client.create_project(name: 'New')
      expect(result[:project]['name']).to eq('New')
    end
  end

  describe 'task operations' do
    let(:client) { described_class.new(token: 'test') }

    it 'lists tasks' do
      allow(mock_conn).to receive(:get).and_return(double(body: [{ 'id' => '1', 'content' => 'Test' }]))
      result = client.list_tasks
      expect(result[:tasks]).to be_an(Array)
    end

    it 'creates a task' do
      allow(mock_conn).to receive(:post).and_return(double(body: { 'id' => '2', 'content' => 'New task' }))
      result = client.create_task(content: 'New task')
      expect(result[:task]['content']).to eq('New task')
    end

    it 'closes a task' do
      allow(mock_conn).to receive(:post).and_return(double(body: nil))
      result = client.close_task(task_id: '1')
      expect(result[:closed]).to be true
    end
  end

  describe 'label operations' do
    let(:client) { described_class.new(token: 'test') }

    it 'lists labels' do
      allow(mock_conn).to receive(:get).and_return(double(body: [{ 'id' => '1', 'name' => 'urgent' }]))
      result = client.list_labels
      expect(result[:labels]).to be_an(Array)
    end
  end

  describe 'comment operations' do
    let(:client) { described_class.new(token: 'test') }

    it 'gets comments' do
      allow(mock_conn).to receive(:get).and_return(double(body: [{ 'id' => '1', 'content' => 'note' }]))
      result = client.get_comments(task_id: '1')
      expect(result[:comments]).to be_an(Array)
    end
  end
end
