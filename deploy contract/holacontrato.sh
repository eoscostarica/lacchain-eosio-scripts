deploy_holacontrato_contracts_to_lacchain() {   
    echo 'Deploy holacontrato'
    mkdir -p ./stdout/holacontrato
    TEMP_DIR=./stdout/holacontrato

    echo '1. set holacontrato smart contract code'
    cleos -u <EOS_API_URL> set contract holacontrato -j -d -s ../holacontrato/ >$TEMP_DIR/tx2.json

    echo '2. writer auth'
    cleos -u <EOS_API_URL> push action -j -d -s writer run '{}' -p costarica@writer >$TEMP_DIR/tx1.json

    echo '3. merge actions'
    jq -s '[.[].actions[]]' $TEMP_DIR/tx1.json $TEMP_DIR/tx2.json >$TEMP_DIR/tx3.json

    echo '4. merge transaction'
    jq '.actions = input' $TEMP_DIR/tx1.json $TEMP_DIR/tx3.json >$TEMP_DIR/tx4.json

    echo '5. sign transaction'
    cleos -u <EOS_API_URL> -r "Accept-Encoding: identity" push transaction $TEMP_DIR/tx4.json -p costarica@writer -p holacontrato@active
}

deploy_holacontrato_contracts_to_lacchain
