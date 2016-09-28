json.extract! bill_detail, :id, :nrofactura, :codpedprod, :codcliente, :precio, :created_at, :updated_at
json.url bill_detail_url(bill_detail, format: :json)