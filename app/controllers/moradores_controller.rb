class MoradoresController < ApplicationController
    def index
        @moradores = Morador.all
    end

    def new
        @morador = Morador.new
    end

    def create
        @morador = Morador.new(morador_params)

        if @morador.save
            redirect_to moradores_url
        else
            render :new
        end
    end

    private
    def morador_params
        params.require(:morador).permit(:nome, :num_apto, :cpf)
    end

end
