defmodule Grafeas.V1beta1.Occurrence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :details, 0

  field :name, 1, type: :string
  field :resource, 2, type: Grafeas.V1beta1.Resource
  field :note_name, 3, type: :string, json_name: "noteName"
  field :kind, 4, type: Grafeas.V1beta1.NoteKind, enum: true
  field :remediation, 5, type: :string
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 7, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :vulnerability, 8, type: Grafeas.V1beta1.Vulnerability.Details, oneof: 0
  field :build, 9, type: Grafeas.V1beta1.Build.Details, oneof: 0

  field :derived_image, 10,
    type: Grafeas.V1beta1.Image.Details,
    json_name: "derivedImage",
    oneof: 0

  field :installation, 11, type: Grafeas.V1beta1.Package.Details, oneof: 0
  field :deployment, 12, type: Grafeas.V1beta1.Deployment.Details, oneof: 0
  field :discovered, 13, type: Grafeas.V1beta1.Discovery.Details, oneof: 0
  field :attestation, 14, type: Grafeas.V1beta1.Attestation.Details, oneof: 0
end

defmodule Grafeas.V1beta1.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :uri, 2, type: :string
  field :content_hash, 3, type: Grafeas.V1beta1.Provenance.Hash, json_name: "contentHash"
end

defmodule Grafeas.V1beta1.Note do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :type, 0

  field :name, 1, type: :string
  field :short_description, 2, type: :string, json_name: "shortDescription"
  field :long_description, 3, type: :string, json_name: "longDescription"
  field :kind, 4, type: Grafeas.V1beta1.NoteKind, enum: true
  field :related_url, 5, repeated: true, type: Grafeas.V1beta1.RelatedUrl, json_name: "relatedUrl"
  field :expiration_time, 6, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 8, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :related_note_names, 9, repeated: true, type: :string, json_name: "relatedNoteNames"
  field :vulnerability, 10, type: Grafeas.V1beta1.Vulnerability.Vulnerability, oneof: 0
  field :build, 11, type: Grafeas.V1beta1.Build.Build, oneof: 0
  field :base_image, 12, type: Grafeas.V1beta1.Image.Basis, json_name: "baseImage", oneof: 0
  field :package, 13, type: Grafeas.V1beta1.Package.Package, oneof: 0
  field :deployable, 14, type: Grafeas.V1beta1.Deployment.Deployable, oneof: 0
  field :discovery, 15, type: Grafeas.V1beta1.Discovery.Discovery, oneof: 0

  field :attestation_authority, 16,
    type: Grafeas.V1beta1.Attestation.Authority,
    json_name: "attestationAuthority",
    oneof: 0
end

defmodule Grafeas.V1beta1.GetOccurrenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Grafeas.V1beta1.ListOccurrencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Grafeas.V1beta1.ListOccurrencesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :occurrences, 1, repeated: true, type: Grafeas.V1beta1.Occurrence
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Grafeas.V1beta1.DeleteOccurrenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Grafeas.V1beta1.CreateOccurrenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :occurrence, 2, type: Grafeas.V1beta1.Occurrence
end

defmodule Grafeas.V1beta1.UpdateOccurrenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :occurrence, 2, type: Grafeas.V1beta1.Occurrence
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Grafeas.V1beta1.GetNoteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Grafeas.V1beta1.GetOccurrenceNoteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Grafeas.V1beta1.ListNotesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Grafeas.V1beta1.ListNotesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :notes, 1, repeated: true, type: Grafeas.V1beta1.Note
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Grafeas.V1beta1.DeleteNoteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Grafeas.V1beta1.CreateNoteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :note_id, 2, type: :string, json_name: "noteId"
  field :note, 3, type: Grafeas.V1beta1.Note
end

defmodule Grafeas.V1beta1.UpdateNoteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :note, 2, type: Grafeas.V1beta1.Note
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Grafeas.V1beta1.ListNoteOccurrencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Grafeas.V1beta1.ListNoteOccurrencesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :occurrences, 1, repeated: true, type: Grafeas.V1beta1.Occurrence
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Grafeas.V1beta1.BatchCreateNotesRequest.NotesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Grafeas.V1beta1.Note
end

defmodule Grafeas.V1beta1.BatchCreateNotesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string

  field :notes, 2,
    repeated: true,
    type: Grafeas.V1beta1.BatchCreateNotesRequest.NotesEntry,
    map: true
end

defmodule Grafeas.V1beta1.BatchCreateNotesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :notes, 1, repeated: true, type: Grafeas.V1beta1.Note
end

defmodule Grafeas.V1beta1.BatchCreateOccurrencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :occurrences, 2, repeated: true, type: Grafeas.V1beta1.Occurrence
end

defmodule Grafeas.V1beta1.BatchCreateOccurrencesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :occurrences, 1, repeated: true, type: Grafeas.V1beta1.Occurrence
end

defmodule Grafeas.V1beta1.GetVulnerabilityOccurrencesSummaryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 2, type: :string
end

defmodule Grafeas.V1beta1.VulnerabilityOccurrencesSummary.FixableTotalByDigest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource, 1, type: Grafeas.V1beta1.Resource
  field :severity, 2, type: Grafeas.V1beta1.Vulnerability.Severity, enum: true
  field :fixable_count, 3, type: :int64, json_name: "fixableCount"
  field :total_count, 4, type: :int64, json_name: "totalCount"
end

defmodule Grafeas.V1beta1.VulnerabilityOccurrencesSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :counts, 1,
    repeated: true,
    type: Grafeas.V1beta1.VulnerabilityOccurrencesSummary.FixableTotalByDigest
end

defmodule Grafeas.V1beta1.GrafeasV1Beta1.Service do
  @moduledoc false

  use GRPC.Service, name: "grafeas.v1beta1.GrafeasV1Beta1", protoc_gen_elixir_version: "0.13.0"

  rpc :GetOccurrence, Grafeas.V1beta1.GetOccurrenceRequest, Grafeas.V1beta1.Occurrence

  rpc :ListOccurrences,
      Grafeas.V1beta1.ListOccurrencesRequest,
      Grafeas.V1beta1.ListOccurrencesResponse

  rpc :DeleteOccurrence, Grafeas.V1beta1.DeleteOccurrenceRequest, Google.Protobuf.Empty

  rpc :CreateOccurrence, Grafeas.V1beta1.CreateOccurrenceRequest, Grafeas.V1beta1.Occurrence

  rpc :BatchCreateOccurrences,
      Grafeas.V1beta1.BatchCreateOccurrencesRequest,
      Grafeas.V1beta1.BatchCreateOccurrencesResponse

  rpc :UpdateOccurrence, Grafeas.V1beta1.UpdateOccurrenceRequest, Grafeas.V1beta1.Occurrence

  rpc :GetOccurrenceNote, Grafeas.V1beta1.GetOccurrenceNoteRequest, Grafeas.V1beta1.Note

  rpc :GetNote, Grafeas.V1beta1.GetNoteRequest, Grafeas.V1beta1.Note

  rpc :ListNotes, Grafeas.V1beta1.ListNotesRequest, Grafeas.V1beta1.ListNotesResponse

  rpc :DeleteNote, Grafeas.V1beta1.DeleteNoteRequest, Google.Protobuf.Empty

  rpc :CreateNote, Grafeas.V1beta1.CreateNoteRequest, Grafeas.V1beta1.Note

  rpc :BatchCreateNotes,
      Grafeas.V1beta1.BatchCreateNotesRequest,
      Grafeas.V1beta1.BatchCreateNotesResponse

  rpc :UpdateNote, Grafeas.V1beta1.UpdateNoteRequest, Grafeas.V1beta1.Note

  rpc :ListNoteOccurrences,
      Grafeas.V1beta1.ListNoteOccurrencesRequest,
      Grafeas.V1beta1.ListNoteOccurrencesResponse

  rpc :GetVulnerabilityOccurrencesSummary,
      Grafeas.V1beta1.GetVulnerabilityOccurrencesSummaryRequest,
      Grafeas.V1beta1.VulnerabilityOccurrencesSummary
end

defmodule Grafeas.V1beta1.GrafeasV1Beta1.Stub do
  @moduledoc false

  use GRPC.Stub, service: Grafeas.V1beta1.GrafeasV1Beta1.Service
end