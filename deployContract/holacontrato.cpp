# include <eosio/eosio.hpp>
using namespace eosio;
class [[eosio::contract]] holacontrato : public contract {
    public:
        using contract::contract;
        [[eosio::action]]
        void hola( name user ){
            print( "Hola, ", user );
        }
};