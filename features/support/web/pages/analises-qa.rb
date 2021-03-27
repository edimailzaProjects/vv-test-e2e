# frozen_string_literal: true

class AnalisesQA
    include Capybara::DSL

    def acessar_url
        visit '/vvtest/'
    end

    def pesquisar_btn
        find('#masthead > div.header-t > div > div.top-right > div > button').click
        sleep 2 
    end

    def escrever_pesquisa_lbl(item_pesquisa)
        find('input[name=s]').set item_pesquisa
    end

    def submeter_pesquisa_btn
        find('#submit-field').click
    end

    def continuar_lendo_lnk
        find('.btn-link').click
    end

    def enviar_btn
        click_button 'Enviar'
        sleep 3
    end
end
