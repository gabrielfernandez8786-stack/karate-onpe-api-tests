Feature: Consulta de distritos - ONPE

  Background:
    * url 'https://resultadoelectoral.onpe.gob.pe/presentacion-backend'
    * header accept = '*/*'
    * header accept-language = 'es-US,es-419;q=0.9,es;q=0.8'
    * header cache-control = 'no-cache'
    * header pragma = 'no-cache'
    * header referer = 'https://resultadoelectoral.onpe.gob.pe/main/actas'
    * header sec-ch-ua = '"Chromium";v="146", "Not-A.Brand";v="24", "Google Chrome";v="146"'
    * header sec-ch-ua-mobile = '?0'
    * header sec-ch-ua-platform = '"Windows"'
    * header sec-fetch-dest = 'empty'
    * header sec-fetch-mode = 'cors'
    * header sec-fetch-site = 'same-origin'
    * header user-agent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
    * header x-k1-kis-ajax-request = 'Ajax_Request'
    * header Cookie = '_ga=GA1.1.208822430.1776704053; _clck=dmi85q%5E2%5Eg5d%5E0%5E2301; _clsk=10xvpat%5E1776704053813%5E1%5E0%5Ek.clarity.ms%2Fcollect; _ga_S91LMCFR6G=GS2.1.s1776704052$o1$g1$t1776704135$j60$l0$h1626562558; _ga_7X9XC2V582=GS2.1.s1776704109$o1$g1$t1776704958$j60$l0$h810090211'

  Scenario: Obtener distritos de Chiclayo
    Given path 'ubigeos/distritos'
    And param idEleccion = 10
    And param idAmbitoGeografico = 1
    And param ubigeoDepartamento = 140000
    And param ubigeoProvincia = 140100
    When method GET
    Then status 200
    And print 'Distritos de Chiclayo:', response