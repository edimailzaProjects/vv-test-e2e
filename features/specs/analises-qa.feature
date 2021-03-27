#language:pt
#Edi B. Silva
#Em: 26/03/2021

@mvp_minimo_entregavel
Funcionalidade: Analises de QA
    Como um recrutador
    Quero colher dados da pesquisa
    Para fazer análises mais detalhadas do QA
    
    
    Esquema do Cenário: Preencher pesquisa com dados obrigatórios válidos
        Dado que eu acesse a página da VV Test
        E acesse o menu "Pesquisa - QA"
        Quando eu preencher todos os <campos> obrigatórios
        Então deve ser direcionado para uma página de sucesso
        
        Exemplos:
        | campos   |
        | "qa_edi" |
        | "qa_edu" |