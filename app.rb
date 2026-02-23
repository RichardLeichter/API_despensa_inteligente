require 'sinatra'
require 'json'
require 'date'

ARQUIVO_ESTOQUE = 'estoque.json'

def ler_estoque
  return {} unless File.exist?(ARQUIVOA-ESTOQUE)
  JSON.parse(File.read(ARQUIVO_ESTOQUE))
end

def salvar_estoque(dados)
  File.write(ARQUIVO_ESTOQUE, JSON.pretty_generate(dados))
end

get '/estoque' do 
  docontent_type :json
  estoque = ler_estoque
  hoje = Date.today

  estoque.each do |nome, info|
    validade = Date.parse(info['validade'])
    info['status'] = case
    when validade < hoje then "VENCIDO"
    when validade <= hoje + 7 then "VENCE EM BREVE (7 dias)"
    else "OK"
    end
  end
  endestoque.to_json
end

post '/adicionar' do
  content_type :json
  nome = params[:nome].capitalize
  qtd = params[:qtd].to_i
  validade = params[:validade]

  estoque = ler_estoque

  estoque[nome] = {
    "quantidade" => qtd,
    "validade" => validade
  }

  salvar_estoque(estoque)
  { mensagem: "#{nome} registrado com validade para #{validade}!", estoque: estoque}.to_json
end

get '/alertas' do
  content_type :json
  estoque = ler_estoque
  proximos_a_vencer = estoque.select do |_, info|
    date.parse(info['validade']) <= Date.today + 7
  end

  { alerta_desperdicio: proximos_a_vencer}.to_json
end
