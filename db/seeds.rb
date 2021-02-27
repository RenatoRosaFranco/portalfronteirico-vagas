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
		# automated
		{ name: 'Comercial, Vendas' },
		{ name: 'Informática, TI, Telecomunicações' },
		{ name: 'Construção, Manutenção' },
		{ name: 'Alimentação / Gastronomia' },
		{ name: 'Saúde' },
		{ name: 'Serviços Gerais' },
		{ name: 'Recursos Humanos' },
		{ name: 'Marketing' },
		{ name: 'Educação, Ensino, Idiomas' },
		{ name: 'Jurídica' },
		{ name: 'Qualidade' },
		{ name: 'Agricultura, Pecuária, Veterinária' },
		{ name: 'Quimica, Petroquimica' },
		{ name: 'Comércio Exterior, Importação, Exportação' },
		{ name: 'Artes' },
		{ name: 'Hotalaria, Turismo' },
		{ name: 'Serviço Social e Comunitário' },
		{ name: 'Industrial, Produção, Fábrica' },
		{ name: 'Administração' },
		{ name: 'Logistica' },
		{ name: 'Telemarketing' },
		{ name: 'Contábil, Finanças, Economia' },
		{ name: 'Segurança' },
		{ name: 'Transportes' },
		{ name: 'Engenharia' },
		{ name: 'Compras' },
		{ name: 'Estética' },
		{ name: 'Arquitetura, Decoração, Design' },
		{ name: 'Moda' },
		{ name: 'Comunicação, TV, Cinema' },
		{ name: 'Auditoria' },
		{ name: 'Ciências, Pesquisa' },
		{ name: 'Meio Ambiente, Ecologia' },
		{ name: 'Cultura, Lazer, Entretenimento' }
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
		{ name: 'Temporário' },
		{ name: 'Autônomo' },
		{ name: 'Outros' },
		{ name: 'Cooperado' },
		{ name: 'Trainee' },
		{ name: 'PJ' }
	]
)

# Deficiency
# @implemented
Deficiency.destroy_all
Deficiency.create(
	[
		{ name: 'Física' },
		{ name: 'Visual' },
		{ name: 'Auditiva' },
		{ name: 'Deficiência Psicossocial' },
		{ name: 'Intelectual' },
		{ name: 'Reabilitados' }
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

state = State.where(acronym: 'RS').first

# City
# @implemented
City.destroy_all
City.create(
	[
		{
			name: 'São Borja',
			capital: false,
			state: state
		},
		{
			name: 'Unistalda',
			capital: false,
			state: state
		},
		{
			name: 'Itaqui',
			capital: false,
			state: state
		},
		{
			name: 'São Luiz Gonzaga',
			capital: false,
			state: state
		},
		{
			name: 'Santo Ângelo',
			capital: false,
			state: state
		}
	]
)
