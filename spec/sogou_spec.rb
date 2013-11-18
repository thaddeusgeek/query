#coding:UTF-8
require 'spec_helper'
sogou = Query::Engine::Sogou.new
result = sogou.query('酒店预订')
ads_top = result.ads_top
ads_right = result.ads_right
describe "types check" do
    it "should return Query::Result::Sogou" do 
        result.class.should == Query::Result::Sogou
    end
    it "should return Array" do 
		ads_top.class.should == Array
        ads_right.class.should == Array
    end	
    it "should has keys" do
        p ads_top[0]
        ads_top[0].should have_key(:rank,:domain)
        ads_top[0].has_key?(:domain).should == true
        ads_top[0].has_key?(:host).should == true
        ads_top[0].has_key?(:href).should == true
        ads_top[0].has_key?(:href).should == true
    end
end
describe "contents check" do
    it "result'size should > 0" do
        ads_top.should_not be_empty
        ads_right.should_not be_empty
    end
end
