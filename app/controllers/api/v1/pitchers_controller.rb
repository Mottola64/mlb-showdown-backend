class Api::V1::PitchersController < ApplicationController

    def index
        @pitchers = Pitcher.all
        render json: @pitchers
    end

    def show
        @pitcher = Pitcher.find(params[:id])
        render json: @pitcher
    end

    def create
        user = User.first
        @pitcher = user.pitchers.new(pitcher_params)
        if @pitcher.save
            render json: @pitcher
        else
            render json: {error: 'Error Creating Pitcher'}
        end
    end

    def update
        if @pitcher.update(pitcher_params)
            render json: @pitcher
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
        params.require(:pitcher).permit(:first_name, :last_name, :full_name, :year_id, :set_id, :card_number, :team, :onbase, :strikeout, :groundball, :flyball, :base_on_balls, :single, :single_plus, :double, :triple, :homerun, :points, :speed, :hand, :starting_position, :fielding_one, :starting_position_two, :fielding_two, :starting_position_three, :fielding_three, :starting_position_four, :fielding_four, :total_outs, :extra_base_hits, :number_of_positions)
    end
end
