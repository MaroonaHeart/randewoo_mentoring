1.###########################################
def my_each_with_index(arr)
  i = 0

  while i < arr.size
   yield(arr[i], i)
   i += 1
  end
  arr
end

my_each_with_index([1,2,3,4]){|a| puts "#{a} #{i}" }

2.######################################################
product_net = Product.find_by(name: "FastReport .Net")
orders_with_net = Order.joins(:registrations).where(registrations: {product_id: product_net.id})
# Допустим orders_with_net.count > 1 млн
some_date = []

orders_with_net.each do |order|
	some_date << {
			number: order.number,
			product_names: [order.registrations.map { |reg| reg.product.name }]
	}
end
#################Refactoring#################################
# Загружаем все заказы с их регистрациями и продуктами одним запросом
orders_with_net = Order
  .joins(registrations: :product) # фильтровать записи по условиям в связанных таблицах
  .includes(registrations: :product) # избегать N+1 при доступе к ассоциациям
  .where(registrations: { product_id: product_net.id })

# Собираем результат
result = orders_with_net.map do |order|
  {
    number: order.number,
    product_names: order.registrations.map { |reg| reg.product.name }
  }
end
########Либо через батчи - пакетами###############################
result = []

orders_with_net.find_in_batches(batch_size: 10_000) do |batch|
  batch.each do |order|
    result << {
      number: order.number,
      product_names: order.registrations.map { |reg| reg.product.name }
    }
  end
end

3.#################################################################
it "успешно завершает заказ без реального списания денег" do
  order = create(:order, total_amount: 5000)
  payment_service = instance_double(PaymentGateway)

  allow(payment_service).to receive(:charge).and_return(true)

  result = described_class.new(order: order, payment_gateway: payment_service).call

  expect(result).to be_success
  expect(order.reload.status).to eq("paid")
end