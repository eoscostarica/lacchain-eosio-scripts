const { Api, JsonRpc } = require('eosjs')
const { eosioConfig } = require('config')
const { JsSignatureProvider } = require('eosjs/dist/eosjs-jssig') // development only
const fetch = require('node-fetch') // node only
const { TextDecoder, TextEncoder } = require('util') // node only
const { TextEncoder, TextDecoder } = require('text-encoding') // React Native, IE11, and Edge Browsers only

const privateKeys = [privateKey1];

const signatureProvider = new JsSignatureProvider(privateKeys);
const rpc = new JsonRpc('http://127.0.0.1:8888', { fetch });
const api = new Api({ rpc, signatureProvider, textDecoder: new TextDecoder(), textEncoder: new TextEncoder() });

const addTransaction = ({
  contractName = eosioConfig.eosioAccount,
  action = 'dispatch',
  api,
  ...data
}) =>
  api.transact(
    {
      actions: [
        {
            authorization: [
                {
                actor: 'costarica',
                permission: 'writer'
                }
            ],
            account: 'writer',
            name: 'run',
            data: { }
        },
        {
            authorization: [
                {
                    actor: contractName,
                    permission: 'active'
                }
            ],
            account: contractName,
            name: action,
            data
        }
      ]
    },
    {
      blocksBehind: 3,
      expireSeconds: 30
    }
  )

module.exports = {
  addTransaction
}