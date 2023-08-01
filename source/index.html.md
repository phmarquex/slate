---
title: API Reference

language_tabs: # must be one of https://github.com/rouge-ruby/rouge/wiki/List-of-supported-languages-and-lexers
  - shell

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/slatedocs/slate'>Documentation Powered by Slate</a>

includes:
  - errors

search: true

code_clipboard: true

meta:
  - name: description
    content: Documentation for the Cia API
---

# Introduction

Welcome to the CIA API! You can use our API to access CIA API endpoints, which can get information on various cats, kittens, and breeds in our database.

We have language bindings in Shell, Ruby, Python, and JavaScript! You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

# Authentication

> To authorize, use this code:

```shell
# With shell, you can just pass the correct header with each request
curl -X "POST" \
  "https://adm.ciadeestagios.com.br/api/v1/auths/get-access-token" \
  -H "accept: application/json" \
  -H "Content-Type: application/json" \
  -d "{
  'email': 'string',
  'password': 'string',
  'abilities': 'vacancies'
}"
```

> Make sure to save your `TOKEN`.

Cia uses API keys to allow access to the API. You can register a new Cia API key at our [developer portal](http://example.com/developers).

Cia expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: Bearer TOKEN`

<aside class="notice">
You must replace <code>TOKEN</code> with your personal API key.
</aside>

# Vacancies

## Get All Vacancies

> Make sure to save your `TOKEN`.

```shell
curl "https://adm.ciadeestagios.com.br/api/v1/vacancies/{company_name}" \
  -H "accept: application/json" \
  -H "Authorization: Bearer TOKEN"
```

> The above command returns JSON structured like this:

```json
{
	"company_public_name": "exemplo",
	"company_id": 1234,
	"primary_color": "#034EA2",
	"secondary_color": "#DFF0FB",
	"about_company": "...",
	"logo": "...png",
	"banner": "....png",
	"courses": [
		"ADMINISTRAÇÃO",
		"BACHARELADO EM CIENCIA E TECNOLOGIA",
	],
	"tecnical_knowledges": {
		"optional": [
			"Espanhol",
			"Excel",
			"Inglês"
		],
		"required": [
			"Espanhol",
			"Excel",
			"Inglês"
		]
	},
	"vacancies": [
		{
			"id": 12345,
			"name": "Estágio em Planejamento de Demanda",
			"salary": 1000,
			"courses": [
				"ADMINISTRAÇÃO",
				"BACHARELADO EM CIENCIA E TECNOLOGIA",
				"COMERCIO EXTERIOR"
				"RELAÇÕES INTERNACIONAIS"
			],
			"benefits": [
				"Assistência médica",
				"Assistência odontológica",
				"Curso de Idiomas",
				"Vale-transporte"
			],
			"location": "São Paulo - SP",
			"knowledges": {
				"optional": null,
				"required": null
			},
			"modalities": [
				"Híbrido"
			],
			"public_link": "https:\/\/app.ciadeestagios.com.br\/vagas\/22192\/token\/555-aaa-222-ccc-1111"
		}
	],
	"benefits": [
		"Assistência médica",
	],
	"activity_branch": "INDUSTRIA QUIMICA",
	"yearly_earning": "Entre R$ 300 milhões e R$ 500 milhões",
	"year_foundation": 1902,
	"headquarters_location": "Holanda"
}
```

This endpoint retrieves all active vacancies from a company.

### HTTP Request

`GET https://adm.ciadeestagios.com.br/api/v1/vacancies/{company_name}`

<aside class="success">
Remember — is required to a company has a public_name registred, if you get a message erro, contact administration!
</aside>
