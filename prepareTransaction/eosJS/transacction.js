const eosUtil = require('./eos')
const { eosioConfig } = require('config')

const addTransaction = ({
  contractName = eosioConfig.eosioAccount,
  action = 'dispatch',
  eosio,
  ...data
}) =>
  eosio.transact(
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