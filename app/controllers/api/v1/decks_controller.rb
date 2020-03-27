class Api::V1::DecksController < ApplicationController
    def index
        decks = Deck.all
        render json: DeckSerializer.new(decks)
    end

    def show
        @deck = Deck.find(params[:id])
        render json: @deck
    end

    def create
        @deck = decks.new(deck_params)
        if @deck.save
            render json: DeckSerializer.new(@deck), status: :created
        else
            render json: {error: 'Error Creating Deck'}
        end
    end

    def update
        if @deck.update(deck_params)
            render json: DeckSerializer.new(@deck)
        else
            render json: {error: 'Error Updating Deck'}
        end
    end

    def destroy
         @deck = Deck.find(params[:id])
         @deck.destroy
    end

    private

    def deck_params
        params.require(:deck).permit(:name)
    end
end
end
