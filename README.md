# fibos-node-v5

```base
git clone https://github.com/fibos123/fibos-node-v5.git
cd fibos-node-v5
```

## CASE: 同步节点
```bash
cp .env.sample .env
sudo docker-compose up -d
```

## CASE: BP节点
```bash
cp .env.sample .env
vi .env
```
填写以下内容：
```
PRODUCER_ACCOUNT=eosio # BP 账户名
PRODUCER_PRIVATE_KEY=5KQ****************D3 # BP 私钥
PRODUCER_PUBLIC_KEY=FO6*****************CV # BP 公钥
```

```bash
sudo docker-compose up -d
```

