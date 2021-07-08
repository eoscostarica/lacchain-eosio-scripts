holacontrato_lacchain() {
  echo 'Ejecutar holacontrato'
  mkdir -p ./stdout/holacontrato
  TEMP_DIR=./stdout/holacontrato

  cleos -u https://lacchain.eosio.cr push action -j -d -s writer run '{}' -p costarica@writer >$TEMP_DIR/tx1.json
  cleos -u https://lacchain.eosio.cr push action -j -d -s holacontrato hola '{"user": "lachaineosio"}' -p holacontrato@active >$TEMP_DIR/tx2.json
  jq -s '[.[].actions[]]' $TEMP_DIR/tx1.json $TEMP_DIR/tx2.json >$TEMP_DIR/tx3.json
  jq '.actions = input' $TEMP_DIR/tx1.json $TEMP_DIR/tx3.json >$TEMP_DIR/tx4.json
  cleos -u https://lacchain.eosio.cr push transaction $TEMP_DIR/tx4.json -p costarica@writer -p holacontrato@active
}

holacontrato_lacchain