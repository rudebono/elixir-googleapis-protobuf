defmodule Google.Cloud.Universalledger.V1.TransactionAttempt.TransactionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRANSACTION_STATUS_UNSPECIFIED, 0
  field :PENDING, 1
  field :FINALIZED, 2
end

defmodule Google.Cloud.Universalledger.V1.ClientTransaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :app, 5, type: Google.Protobuf.Any, oneof: 0, deprecated: false
  field :operational, 6, type: Google.Protobuf.Any, oneof: 0
  field :chain, 8, type: Google.Cloud.Universalledger.V1.TransactionChain, oneof: 0
  field :source, 1, type: Google.Cloud.Universalledger.V1.Entity, deprecated: false

  field :signatories, 2,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.Entity,
    deprecated: false

  field :sequence_number, 3, type: :int64, json_name: "sequenceNumber", deprecated: false
  field :chained_unit, 7, type: :bool, json_name: "chainedUnit"
end

defmodule Google.Cloud.Universalledger.V1.SignedTransaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :serialized_client_transaction, 1,
    type: :bytes,
    json_name: "serializedClientTransaction",
    deprecated: false

  field :sender_signature, 3, type: :bytes, json_name: "senderSignature", deprecated: false

  field :other_signatures, 4,
    repeated: true,
    type: :bytes,
    json_name: "otherSignatures",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.TransactionChain do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :units, 1, repeated: true, type: :bytes
end

defmodule Google.Cloud.Universalledger.V1.MerkleTree do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :root_hash_hex, 1, type: :string, json_name: "rootHashHex", deprecated: false
  field :num_transactions, 2, type: :int64, json_name: "numTransactions", deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.RoundCertificate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :round_id, 1, type: :int64, json_name: "roundId", deprecated: false
  field :validator_id, 2, type: :string, json_name: "validatorId", deprecated: false

  field :round_state_checksum_hex, 3,
    type: :string,
    json_name: "roundStateChecksumHex",
    deprecated: false

  field :round_delta_checksum_hex, 4,
    type: :string,
    json_name: "roundDeltaChecksumHex",
    deprecated: false

  field :merkle_tree, 6,
    type: Google.Cloud.Universalledger.V1.MerkleTree,
    json_name: "merkleTree",
    deprecated: false

  field :validator_signatures, 5,
    repeated: true,
    type: :bytes,
    json_name: "validatorSignatures",
    deprecated: false

  field :is_finalized, 7, type: :bool, json_name: "isFinalized", deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.TransactionEffect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :bytes, deprecated: false
  field :old_val, 2, type: :bytes, json_name: "oldVal", deprecated: false
  field :new_val, 3, type: :bytes, json_name: "newVal", deprecated: false
  field :delta_val, 4, type: :int64, json_name: "deltaVal", deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.TransactionStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1, type: :int32, deprecated: false
  field :message, 2, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.TransactionEffects do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Google.Cloud.Universalledger.V1.TransactionStatus

  field :effects, 2,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.TransactionEffect,
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.TransactionEvent.EventAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.TransactionEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string, deprecated: false

  field :attributes, 2,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.TransactionEvent.EventAttribute,
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.TransactionCertificate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :transaction_digest_hex, 1,
    type: :string,
    json_name: "transactionDigestHex",
    deprecated: false

  field :round_id, 2, type: :int64, json_name: "roundId", deprecated: false

  field :transaction_effects, 3,
    type: Google.Cloud.Universalledger.V1.TransactionEffects,
    json_name: "transactionEffects",
    deprecated: false

  field :events, 6,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.TransactionEvent,
    deprecated: false

  field :transaction_effects_state_checksum_hex, 4,
    type: :string,
    json_name: "transactionEffectsStateChecksumHex",
    deprecated: false

  field :certification_results_digest_hex, 5,
    type: :string,
    json_name: "certificationResultsDigestHex"
end

defmodule Google.Cloud.Universalledger.V1.ProofOfInclusion.MerkleTreeNode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :left_child_hash_hex, 1, type: :string, json_name: "leftChildHashHex"
  field :right_child_hash_hex, 2, type: :string, json_name: "rightChildHashHex"
end

defmodule Google.Cloud.Universalledger.V1.ProofOfInclusion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :transaction_certificate, 1,
    type: Google.Cloud.Universalledger.V1.TransactionCertificate,
    json_name: "transactionCertificate"

  field :round_certificate, 2,
    type: Google.Cloud.Universalledger.V1.RoundCertificate,
    json_name: "roundCertificate"

  field :path_to_round_root, 3,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.ProofOfInclusion.MerkleTreeNode,
    json_name: "pathToRoundRoot",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.TransactionAttempt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1,
    type: Google.Cloud.Universalledger.V1.TransactionAttempt.TransactionStatus,
    enum: true,
    deprecated: false

  field :proof_of_inclusion, 2,
    type: Google.Cloud.Universalledger.V1.ProofOfInclusion,
    json_name: "proofOfInclusion"

  field :status_events, 3,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.StatusEvent,
    json_name: "statusEvents"
end
