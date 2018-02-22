class EnterpriseController < ApplicationController
	def index
    @enterprise = Enterprise.all
  end
end
