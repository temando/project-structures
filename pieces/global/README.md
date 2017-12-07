# Temando Billing Service

This service will generate customer usage metrics and invoices.

## Getting Started

Before you begin working on Billing service, consult [Getting Started](http://docs.temando.io/platform-services-tome/Getting-Started/) on [Platform Services tome](http://docs.temando.io/platform-services-tome/).

Also ensure you have the following dependant services deployed into your development stack:

[Service Dependencies](./ts-definition.json "ts-definition:")

## Usage

This service conforms to the [JSON API specification](http://jsonapi.org/format/).

### API
TODO: API Usages.

### Billing Usage Stream

Billing Service exports `billing-usage` kinesis stream [resource](./ts-definition.json "ts-definition:"). To write events into the stream `kinesis:PutRecord` permission is required.

Example:

```
- Effect: Allow
  Action:
    - kinesis:PutRecord
  Resource: "arn:aws:kinesis:${self:provider.region}:*:stream/billing-usage-${self:provider.stage}"
```

### Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)
