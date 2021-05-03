# README

link challange https://gist.github.com/brunoocasali/95f62e9d2e5e54cfd44d9ad696b20c42

Para rodar esse projeto é necessário instalar docker / docker-compose 
starte o service do docker
sudo docker-compose build
sudo docker-compose run web rails db:create db:migrate
sudo docker-compose  up

Utilizando a aplicação.

A rota para criar uma nova reclamação
Em um programa de testar API, crie uma request  POST para a rota "localhost:3000/complaint" contendo o seguinte JSON
{
	"complaint":{
		"title": "Mal atendimento",
		"company":"Vikinsk Company",
		"description": "Aqui vai o corpo da reclamação",
		"location":" Rua Quinze de Novembro, Valparaíso , São Paulo "
	}
}



Para verificar quantas reclamações uma loja tem em uma certa cidade, crie uma request get para a rota "localhost:3000/complaint/search" contendo o seguinte JSON
{
	"search":{
		"company": "Vikinsk Company",
		"state": "São Paulo",
		"city": "Valparaíso",
		"postcode": "16880-000"
	}
}



