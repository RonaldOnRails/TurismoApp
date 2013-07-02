json.array!(@vendas) do |venda|
  json.extract! venda, :data_venda, :forma_pagamento, :status, :tipo_cliente, :valor_total
  json.url venda_url(venda, format: :json)
end