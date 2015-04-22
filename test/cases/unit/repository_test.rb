require 'test_helper'

class RepositoryTest < Minitest::Test
  def setup
    @registry = ROM::CouchDB::Repository.new('testdb')
  end

  def test_connection
    assert_equal CouchRest::Database, @registry.connection.class
    assert_equal 'http://127.0.0.1:5984/testdb', @registry.connection.root
  end

  def test_dataset
    dataset = @registry.dataset('test')

    assert_equal ROM::CouchDB::Dataset, dataset.class
    assert_equal dataset, @registry['test']
    assert @registry.dataset?('test')
  end
end
