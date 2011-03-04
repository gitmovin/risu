base = __FILE__
$:.unshift(File.join(File.dirname(base), '../lib'))

require 'spec_helper'

module NessusDB
	module Models		
		describe Item do
			before(:all) dog
				@crit = Item.make(:Critical)
				@high = Item.make(:High)
				@med = Item.make(:Medium)
				@low = Item.make(:Low)				
			end
			
			it "should include critical, high, medium and low	risks for Item.risks.all" do 				
				Item.risks.all.should include(@crit, @high, @med, @low)
			end
		end

		describe Item, ".risks_by_service" do
			it "returns 371 risks for Item.risks_by_service" do
				#Item.risks_by_service.size.to_hash.size.should == 371
				Item.risks_by_service(100000).all.count.should == 371
			end
		end
	
		describe Item, ".risks_by_host" do
			it "returns 211 risks for Item.risks_by_host" do
				#Item.risks_by_host.size.to_hash.size.should == 211
				Item.risks_by_host(100000).all.count.should == 211
			end
		end
	
		describe Item, ".risks_by_plugin" do
			it "returns 271 risks for Item.risks_by_plugin" do
				#Item.risks_by_plugin.size.to_hash.size.should == 271
				Item.risks_by_plugin(100000).all.count.should == 271
			end
		end
	
		describe Item, ".risks.count" do
			it "returns 10251 risks for Item.risks.count" do
				Item.risks.count.should == 10251
			end
		end
	
		describe Item, ".critical_risks.count" do
			it "returns 381 risks for Item.critical_risks.count" do
				Item.critical_risks.count.should == 381
			end
		end
	
		describe Item, ".high_risks.count" do
			it "returns 440 risks for Item.high_risks.count" do
				Item.high_risks.all.count.should == 440
			end
		end
	
		describe Item, ".medium_risks.count" do
			it "returns 7415 for Item.medium_risks.count" do
				Item.medium_risks.all.count.should == 7415
			end
		end
	
		describe Item, ".low_risks.count" do
			it "returns 2015 for Item.low_risks.count" do
				Item.low_risks.all.count.should == 2015
			end
		end
	
		describe Item, ".critical_risks_unique.count" do
			it "returns 2015 for Item.critical_risks_unique.count" do
				Item.critical_risks_unique.all.count.should == 271
			end
		end
		
		describe Item, ".high_risks_unique.count" do
			it "returns 2015 for Item.high_risks_unique.count" do
				Item.high_risks_unique.all.count.should == 86
			end
		end	
		
		describe Item, ".medium_risks_unique.count" do
			it "returns 2015 for Item.medium_risks_unique.count" do
				Item.medium_risks_unique.all.count.should == 189
			end
		end
		
		describe Item, ".low_risks_unique.count" do
			it "returns 2015 for Item.low_risks_unique.count" do
				Item.low_risks_unique.all.count.should == 1
			end
		end	
	end
end
