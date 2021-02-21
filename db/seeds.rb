# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User
# @implemented
User.destroy_all
User.create(
	[
		{
			email: 'contato@portalfronteirico.com',
			password: 'tes123',
			password_confirmation: 'tes123',
			admin: true
		}
	]
)

# OccupationArea
# @implemented
OccupationArea.destroy_all
OccupationArea.create(
	[
		{ name: 'Banco de Dados' },
		{ name: 'Design / UX' },
		{ name: 'Gestão de TI' },
		{ name: 'Inovação e Gestão' },
		{ name: 'Marketing Digital' },
		{ name: 'Programação / Arquitetura' },
		{ name: 'Redes / Infraestrutura' },
		{ name: 'Requisitos' },
		{ name: 'Segurança' },
		{ name: 'Testes' },
		{ name: 'Treinamentos / Instrutoria' },
	]
)

# HiringType
# @implemented
HiringType.destroy_all
HiringType.create(
	[
		{ name: 'A combinar' },
		{ name: 'CLT Flex' },
		{ name: 'CLT Full' },
		{ name: 'Estágio' },
		{ name: 'Freela' },
		{ name: 'PJ' }
	]
)

# Region
# @implemented
Region.destroy_all
Region.create(
	[
		{ name: 'Norte' },
		{ name: 'Nordeste' },
		{ name: 'Centro Oeste' },
		{ name: 'Sudeste' },
		{ name: 'Sul' }
	]
)

# State
# @implemented
State.destroy_all
State.create(
	[
		{
			name: 'Rio Grande do Sul',
			acronym: 'RS',
			region: Region.where(name: 'Sul').first
		}
	]
)

# City
# @implemented
City.destroy_all
City.create(
	[
		{
			name: 'São Borja',
			capital: false,
			state: State.where(acronym: 'RS').first
		}
	]
)
