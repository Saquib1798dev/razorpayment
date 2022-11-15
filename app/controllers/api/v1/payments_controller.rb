module Api
  module V1
    class PaymentsController < ApplicationController
      before_action :set_order_params

      def create_order
        order = Razorpay::Order.create amount: @amount, currency: @currency, receipt: @receipt
        render json: {data: order}
      end

      def verify_payment_state
      end

      private 

      def set_order_params
        @amount = params[:amount]
        @currency = params[:currency]
        @receipt = params[:receipt]
      end
    end
  end
end
