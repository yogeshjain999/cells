require File.join(File.dirname(__FILE__), 'test_helper')

class AbstractCellTest < ActiveSupport::TestCase
  context "Cell::Base" do
    should "provide framework accessors" do
      assert_nil Cell::Base.framework
      Cell::Base.framework = :sinatra
      assert_equal :sinatra, Cell::Base.framework
    end
    
    should "provide render_cell_for" do
      assert_equal "Doo", Cell::Base.render_cell_for(@controller, :bassist, :play)
    end
  end
end