<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Email</title>
</head>
<body>
	<p>This is email!</p>

	Order Id: {{ $order->id }} </br>
	Order Email: {{ $order->billing_email }} </br>
	Order Billing Name: {{ $order->billing_name }} </br>
	Order Total: ${{ round($order->billing_total / 100, 2) }} </br>

</body>
</html>