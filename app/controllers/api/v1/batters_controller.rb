class Api::V1::BattersController < ApplicationController

    def index
        @batters = Batter.all
        render json: BatterSerializer.new(@batters)
    end

    def show
        @batter = Batter.find(params[:id])
        render json: @batter
    end

    def create
        @batter = batters.new(batter_params)
        if @batter.save
            render json: BatterSerializer.new(@batter), status: :created
        else
            render json: {error: 'Error Creating Batter'}
        end
    end

    def update
        if @batter.update(batter_params)
            render json: BatterSerializer.new(@batter)
        else
            render json: {error: 'Error Updating Batter'}
        end
    end

    def destroy
         @batter = Batter.find(params[:id])
         @batter.destroy
    end

    private

    def batter_params
        params.require(:batter).permit(:first_name, :last_name, :full_name, :year_id, :set_id, :card_number, :team, :onbase, :strikeout, :groundball, :flyball, :base_on_balls, :single, :single_plus, :double, :triple, :homerun, :points, :speed, :hand, :starting_position, :fielding_one, :starting_position_two, :fielding_two, :starting_position_three, :fielding_three, :starting_position_four, :fielding_four, :total_outs, :extra_base_hits, :number_of_positions)
    end
end
