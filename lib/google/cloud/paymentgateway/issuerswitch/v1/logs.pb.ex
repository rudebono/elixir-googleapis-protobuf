defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.UpiTransaction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :payload, 0

  field :description, 1, type: :string
  field :severity, 2, type: Google.Logging.Type.LogSeverity, enum: true

  field :api_type, 3,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.ApiType,
    json_name: "apiType",
    enum: true

  field :xml_api_type, 4,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.XmlApiType,
    json_name: "xmlApiType",
    enum: true

  field :transaction_type, 5,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionType,
    json_name: "transactionType",
    enum: true

  field :transaction_id, 6, type: :string, json_name: "transactionId"
  field :message_id, 7, type: :string, json_name: "messageId"
  field :rrn, 8, type: :string
  field :payload_receipt_time, 9, type: Google.Protobuf.Timestamp, json_name: "payloadReceiptTime"
  field :payload_sent_time, 10, type: Google.Protobuf.Timestamp, json_name: "payloadSentTime"

  field :status, 11,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.State,
    enum: true

  field :error_code, 12, type: :string, json_name: "errorCode"
  field :upi_error_code, 13, type: :string, json_name: "upiErrorCode"
  field :error_message, 14, type: :string, json_name: "errorMessage"
  field :sent, 15, type: :string, oneof: 0
  field :received, 16, type: :string, oneof: 0
end