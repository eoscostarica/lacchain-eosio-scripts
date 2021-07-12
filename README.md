## Lacchain-scripts

<p align="center">
	<a href="https://eosio.lacchain.net">
		<img src="./lacchain-eosio-logo.png" width="500">
	</a>
</p>

<p align="center">
	<a href="#">
		<img src="https://img.shields.io/dub/l/vibe-d.svg" alt="MIT">
	</a>
</p>

## Descripción

Este repositorio contiene scripts de ejemplo para compilar contratos inteligentes en la red de LACChain EOSIO. También se exponen archivos en formato `.sh` y `.js` donde se muestran ejemplos de cómo ejecutar transacciones en esta red, para consultar con más detalle esta información diríjase a la [documentación técnica de la red LACChain EOSIO](https://eosio.lacchain.net/docs/guias/transacciones)

### Prerrequisitos

- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/en/)
- [jq](https://www.howtoinstall.me/ubuntu/18-04/jq/)
- [Eosio](https://developers.eos.io/welcome/latest/getting-started-guide/local-development-environment/index)


## Estructura de archivos

```text title="./lacchain-eosio-scripts"
/
├── deployContract
│   └── holacontrato.cpp .................. Se muestra el contrato holacontrato que se encuentra en la red https://lacchain.eosio.online/accounts
│   └── holacontrato.sh .................. Se muestra cómo compilar para el contrato holacontrato
├── prepareTransaction
│   └── eosJS
│       └── holacontrato.js .................. Se muestra cómo preparar una transacción para el contrato holacontrato por medio de eosJS
│       └── transacction.js .................. Se muestra cómo preparar una transacción por medio de eosJS
│	└── shellScript
│		└── holacontrato.sh .................. Se muestra cómo preparar una transacción para el contrato holacontrato por medio de sh
├── LICENSE .................. Términos y Condiciones
└── README.md ................ Especificación del repositorio
```

## Licencia

MIT © [EOS Costa Rica](https://eoscostarica.io/)

## Contribuir

Si quiere hacer alguna contribución a este repositorio, por favor siga los siguientes pasos:

1. Haga Fork al proyecto
2. Cree una nueva rama (`git checkout -b feat/sometodo`)
3. Haga Commit de los cambios (`git commit -m '<type>(<scope>): <subject>'`)
4. Haga Push del commit (`git push origin feat/sometodo`)
5. Abra un Pull Request

Lea las [pautas de contribución](https://guide.eoscostarica.io/docs/open-source-guidelines/) de código abierto de EOS Costa Rica para obtener más información sobre las convenciones de programación.

Si encuentra algún bug, infórmelo abriendo un issue en [este enlace](https://github.com/lacchain/lacchain-eosio-local/issues).


## ¿Qué es LACChain?

LACChain es la Alianza Global para el desarrollo del ecosistema blockchain en América Latina y el Caribe, una iniciativa liderada por BID Lab (Laboratorio de Innovación del grupo Banco Interamericano de Desarrollo). Su objetivo es acelerar la habilitación y la adopción de la tecnología blockchain para el fomento de la innovación, la reducción de las desigualdades y el impacto en inclusión. Para ello, LACChain se enfoca en dos grandes pilares: comunidad e infraestructura. Además, busca desarrollar y promover interoperabilidad de redes, así como desplegar y mantener infraestructuras blockchain interoperables. LACChain Blockchain Networks, utiliza tecnologías Hyperledger Besu y EOSIO.

## Acerca de EOS Costa Rica

<br>
<p align="center">
	<a href="https://eosio.lacchain.net">
		<img src="https://raw.githubusercontent.com/eoscostarica/design-assets/master/logos/eosCR/fullColor-horizontal-transparent-white.png" width="400">
	</a>
</p>
<br>

EOS Costa Rica es un productor de bloques independiente, autofinanciado y de bare-metal de Genesis que proporciona una infraestructura estable y segura para EOSIO blockchains. Apoyamos el software de código abierto para nuestra comunidad al mismo tiempo que ofrecemos desarrollo de blockchain empresarial y desarrollo de contratos inteligentes personalizados para nuestros clientes.

[es.eoscostarica.io](https://es.eoscostarica.io/)