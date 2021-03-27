# frozen_string_literal: true

Dado('que eu acesse a página da VV Test') do
    @analises_qa.acessar_url
end
  
Dado('acesse o menu {string}') do |item_menu|
    @analises_qa.pesquisar_btn
    @analises_qa.escrever_pesquisa_lbl(item_menu)
    @analises_qa.submeter_pesquisa_btn
    @analises_qa.continuar_lendo_lnk
end

Quando('eu preencher todos os {string} obrigatórios') do |campos|
    file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/lista_qas.yaml"))
    @qa = file[campos]
    @analises_qa_formulario.preencher_primeiros_campos_fxt(@qa)
    @analises_qa.enviar_btn
  end

Então('deve ser direcionado para uma página de sucesso') do
    expect(page).to have_text 'Your form has been successfully submitted.'
    page.save_screenshot("log/sucesso.png")
end
