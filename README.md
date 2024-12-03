# fibos-node-v5

## 同步节点
```bash
cp .env.sample .env
docker-compose up -d
```

## BP节点
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
docker-compose up -d
```