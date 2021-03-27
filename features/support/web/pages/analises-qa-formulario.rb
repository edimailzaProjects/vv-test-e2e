# frozen_string_literal: true

class AnalisesQaFormulario
    include Capybara::DSL

    def preencher_primeiros_campos_fxt(qas_fixtures) 
        find('input[name=fname]').set qas_fixtures['nome']
        sleep 1
        find('input[name=lname]').set qas_fixtures["sobrenome"]
        sleep 1
        find('input[name=email]').set qas_fixtures["email"]
        sleep 1
        find('input[name=nf-field-8]').set qas_fixtures["confirmacao_email"]
        
        if(qas_fixtures["idade"].eql? '18-30') then 
            find('#nf-label-class-field-10-0').click
        elsif(qas_fixtures["idade"].eql? '31-49') then
            find('#nf-label-class-field-10-1').click       
        else
            find('#nf-label-class-field-10-1').click   
        end

        find('#nf-field-11').click
        
        
        if(qas_fixtures["tempo"].eql? 'Iniciando na área') then 
            find('option[value=iniciando-na-area]').click    
        elsif(qas_fixtures["tempo"].eql? 'Menos de 5 anos') then
            find('option[value=menos-de-5-anos]').click
        else
            find('option[value=mais-de-5-anos]').click
        end

        find('#nf-field-12').click
        

        if(qas_fixtures["motivacao"].eql? 'Desafio') then 
            find('option[value=desafio]').click
        elsif(qas_fixtures["motivacao"].eql? 'Salário') then
            find('option[value=salario]').click           
        else
            find('option[value=sou-mega-chato]').click            
        end

        find('#nf-field-14').set qas_fixtures["linguagem"]

        if(qas_fixtures["precisa_melhorar"].eql? 'Técnico') then
            tec = find('#nf-field-13-wrap > div.nf-field-element > ul > li', text: 'Técnico').click
        elsif(qas_fixtures["precisa_melhorar"].eql? 'Negócio') then
            find('#nf-field-13-wrap > div.nf-field-element > ul > li', text: 'Negócio').click
        elsif(qas_fixtures["precisa_melhorar"].eql? 'Comunicação') then
            find('#nf-field-13-wrap > div.nf-field-element > ul > li', text: 'Comunicação').click
        elsif(qas_fixtures["precisa_melhorar"].eql? 'Liderança') then
            find('#nf-field-13-wrap > div.nf-field-element > ul > li', text: 'Liderança').click    
        else
            find('#nf-field-13-wrap > div.nf-field-element > ul > li', text: 'Todas as anteriores').click
        end
        
    end
end