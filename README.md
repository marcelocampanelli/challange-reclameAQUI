# Setup do projeto
- Para rodar esse projeto é necessário instalar docker / docker-compose 
- sudo docker-compose build
- sudo docker-compose run web rails db:create db:migrate
- sudo docker-compose  up

# Utilizando a aplicação.

* Para criar uma nova reclamação

	POST: `localhost:3000/complaint`

	```json
	{
		"complaint":{
			"title": "Mal atendimento",
			"company":"Vikinsk Company",
			"description": "Aqui vai o corpo da reclamação",
			"location":" Rua Quinze de Novembro, Valparaíso , São Paulo "
		}
	}
	```


* Para pesquisar reclamações de uma empresa de uma cidade

	GET: `localhost:3000/complaint/search`
	```json
	{
		"search":{
			"company": "Vikinsk Company",
			"state": "São Paulo",
			"city": "Valparaíso",
			"postcode": "16880-000"
		}
	}
	```

