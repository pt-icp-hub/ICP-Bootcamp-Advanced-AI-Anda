# `icp_ledger_agent`

An AI agent example to interact with ICP blockchain ledgers.

## Running locally

```sh
git clone https://github.com/ldclabs/anda.git
cd anda
cp example.env .env
# update .env
```

#### 🔧 **Anda Framework Configuration**
Before running your AI agent, make sure to add the following lines to your `.env` file:
```
MODEL_NAME='gpt-4o-mini'
MODEL_ENDPOINT='https://api.openai.com/v1'
```
To obtain the **OpenAI API Key**, please DM **Tiago or Antoine**. We have prepared keys specifically for this challenge.

Build CLI tool and run agent:

```sh
cargo run -p icp_ledger_agent
cargo build -p anda_engine_cli
./target/debug/anda_engine_cli agent-run -p 'Please check my PANDA balance'
./target/debug/anda_engine_cli tool-call -n icp_ledger_balance_of -a '{"account":"535yc-uxytb-gfk7h-tny7p-vjkoe-i4krp-3qmcl-uqfgr-cpgej-yqtjq-rqe","symbol":"PANDA"}'
./target/debug/anda_engine_cli agent-run -i ~/.config/dfx/identity/default/identity.pem -p prompt
```

For authentication, the **ID_SECRET** and **ROOT_SECRET** can be directly derived from one of your existing `dfx` identities. You can do this by specifying the path to your selected identity `.pem` file. For example, to use the principal address of your **default** identity, run:
```
./target/debug/anda_engine_cli agent-run -i ~/.config/dfx/identity/default/identity.pem -p 'Please check my PANDA balance'
```

**Notice**: The current version only supports OpenAI and Grok. Deepseek's Function Calling capabilitity is unstable. https://api-docs.deepseek.com/guides/function_calling

## License

Copyright © 2025 [LDC Labs](https://github.com/ldclabs).

`ldclabs/anda` is licensed under the MIT License. See the [MIT license][license] for the full license text.

[license]: ./../../LICENSE-MIT
