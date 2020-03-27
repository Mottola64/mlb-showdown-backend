class Api::V1::PitchersController < ApplicationController

    def index
        @pitchers = Pitcher.all
        render json: PitcherSerializer.new(@pitchers)
    end

    def show
        @pitcher = Pitcher.find(params[:id])
        render json: @pitcher
    end

    def create
        user = User.first
        @pitcher = user.pitchers.new(pitcher_params)
        if @pitcher.save
            render json: PitcherSerializer.new(@pitcher)
        else
            render json: {error: 'Error Creating Pitcher'}
        end
    end

    def update
        if @pitcher.update(pitcher_params)
            render json: PitcherSerializer.new(@pitcher)
        else
            render json: {error: 'Error Updating Pitcher'}
        end
    end

    def destroy
         @pitcher = Pitcher.find(params[:id])
         @pitcher.destroy
    end

    private

    def pitcher_params
        params.require(:pitcher).permit(:query, :first_name, :last_name, :full_name, :year_id, :set_id, :card_number, :team, :control, :put_out, :strikeout, :groundball, :flyball, :base_on_balls, :single, :double, :homerun, :points, :innings_pitched, :hand, :position)
    end
end
