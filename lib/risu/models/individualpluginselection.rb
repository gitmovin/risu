# encoding: utf-8

module Risu
	module Models

		# IndividualPluginSelection Model
		#
		# @author Jacob Hammack
		class IndividualPluginSelection < ActiveRecord::Base
			belongs_to :policy
			has_many :plugins
		end
	end
end