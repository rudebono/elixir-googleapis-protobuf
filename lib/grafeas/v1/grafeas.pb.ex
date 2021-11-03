defmodule Grafeas.V1.Occurrence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: {atom, any},
          name: String.t(),
          resource_uri: String.t(),
          note_name: String.t(),
          kind: Grafeas.V1.NoteKind.t(),
          remediation: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          envelope: Grafeas.V1.Envelope.t() | nil
        }

  defstruct [
    :details,
    :name,
    :resource_uri,
    :note_name,
    :kind,
    :remediation,
    :create_time,
    :update_time,
    :envelope
  ]

  oneof :details, 0
  field :name, 1, type: :string
  field :resource_uri, 2, type: :string
  field :note_name, 3, type: :string
  field :kind, 4, type: Grafeas.V1.NoteKind, enum: true
  field :remediation, 5, type: :string
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :update_time, 7, type: Google.Protobuf.Timestamp
  field :vulnerability, 8, type: Grafeas.V1.VulnerabilityOccurrence, oneof: 0
  field :build, 9, type: Grafeas.V1.BuildOccurrence, oneof: 0
  field :image, 10, type: Grafeas.V1.ImageOccurrence, oneof: 0
  field :package, 11, type: Grafeas.V1.PackageOccurrence, oneof: 0
  field :deployment, 12, type: Grafeas.V1.DeploymentOccurrence, oneof: 0
  field :discovery, 13, type: Grafeas.V1.DiscoveryOccurrence, oneof: 0
  field :attestation, 14, type: Grafeas.V1.AttestationOccurrence, oneof: 0
  field :upgrade, 15, type: Grafeas.V1.UpgradeOccurrence, oneof: 0
  field :compliance, 16, type: Grafeas.V1.ComplianceOccurrence, oneof: 0
  field :dsse_attestation, 17, type: Grafeas.V1.DSSEAttestationOccurrence, oneof: 0
  field :envelope, 18, type: Grafeas.V1.Envelope
end

defmodule Grafeas.V1.Note do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {atom, any},
          name: String.t(),
          short_description: String.t(),
          long_description: String.t(),
          kind: Grafeas.V1.NoteKind.t(),
          related_url: [Grafeas.V1.RelatedUrl.t()],
          expiration_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          related_note_names: [String.t()]
        }

  defstruct [
    :type,
    :name,
    :short_description,
    :long_description,
    :kind,
    :related_url,
    :expiration_time,
    :create_time,
    :update_time,
    :related_note_names
  ]

  oneof :type, 0
  field :name, 1, type: :string
  field :short_description, 2, type: :string
  field :long_description, 3, type: :string
  field :kind, 4, type: Grafeas.V1.NoteKind, enum: true
  field :related_url, 5, repeated: true, type: Grafeas.V1.RelatedUrl
  field :expiration_time, 6, type: Google.Protobuf.Timestamp
  field :create_time, 7, type: Google.Protobuf.Timestamp
  field :update_time, 8, type: Google.Protobuf.Timestamp
  field :related_note_names, 9, repeated: true, type: :string
  field :vulnerability, 10, type: Grafeas.V1.VulnerabilityNote, oneof: 0
  field :build, 11, type: Grafeas.V1.BuildNote, oneof: 0
  field :image, 12, type: Grafeas.V1.ImageNote, oneof: 0
  field :package, 13, type: Grafeas.V1.PackageNote, oneof: 0
  field :deployment, 14, type: Grafeas.V1.DeploymentNote, oneof: 0
  field :discovery, 15, type: Grafeas.V1.DiscoveryNote, oneof: 0
  field :attestation, 16, type: Grafeas.V1.AttestationNote, oneof: 0
  field :upgrade, 17, type: Grafeas.V1.UpgradeNote, oneof: 0
  field :compliance, 18, type: Grafeas.V1.ComplianceNote, oneof: 0
  field :dsse_attestation, 19, type: Grafeas.V1.DSSEAttestationNote, oneof: 0
end

defmodule Grafeas.V1.GetOccurrenceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Grafeas.V1.ListOccurrencesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Grafeas.V1.ListOccurrencesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          occurrences: [Grafeas.V1.Occurrence.t()],
          next_page_token: String.t()
        }

  defstruct [:occurrences, :next_page_token]

  field :occurrences, 1, repeated: true, type: Grafeas.V1.Occurrence
  field :next_page_token, 2, type: :string
end

defmodule Grafeas.V1.DeleteOccurrenceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Grafeas.V1.CreateOccurrenceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          occurrence: Grafeas.V1.Occurrence.t() | nil
        }

  defstruct [:parent, :occurrence]

  field :parent, 1, type: :string
  field :occurrence, 2, type: Grafeas.V1.Occurrence
end

defmodule Grafeas.V1.UpdateOccurrenceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          occurrence: Grafeas.V1.Occurrence.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :occurrence, :update_mask]

  field :name, 1, type: :string
  field :occurrence, 2, type: Grafeas.V1.Occurrence
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Grafeas.V1.GetNoteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Grafeas.V1.GetOccurrenceNoteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Grafeas.V1.ListNotesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Grafeas.V1.ListNotesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notes: [Grafeas.V1.Note.t()],
          next_page_token: String.t()
        }

  defstruct [:notes, :next_page_token]

  field :notes, 1, repeated: true, type: Grafeas.V1.Note
  field :next_page_token, 2, type: :string
end

defmodule Grafeas.V1.DeleteNoteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Grafeas.V1.CreateNoteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          note_id: String.t(),
          note: Grafeas.V1.Note.t() | nil
        }

  defstruct [:parent, :note_id, :note]

  field :parent, 1, type: :string
  field :note_id, 2, type: :string
  field :note, 3, type: Grafeas.V1.Note
end

defmodule Grafeas.V1.UpdateNoteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          note: Grafeas.V1.Note.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :note, :update_mask]

  field :name, 1, type: :string
  field :note, 2, type: Grafeas.V1.Note
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Grafeas.V1.ListNoteOccurrencesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :filter, :page_size, :page_token]

  field :name, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Grafeas.V1.ListNoteOccurrencesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          occurrences: [Grafeas.V1.Occurrence.t()],
          next_page_token: String.t()
        }

  defstruct [:occurrences, :next_page_token]

  field :occurrences, 1, repeated: true, type: Grafeas.V1.Occurrence
  field :next_page_token, 2, type: :string
end

defmodule Grafeas.V1.BatchCreateNotesRequest.NotesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Grafeas.V1.Note.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Grafeas.V1.Note
end

defmodule Grafeas.V1.BatchCreateNotesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          notes: %{String.t() => Grafeas.V1.Note.t() | nil}
        }

  defstruct [:parent, :notes]

  field :parent, 1, type: :string
  field :notes, 2, repeated: true, type: Grafeas.V1.BatchCreateNotesRequest.NotesEntry, map: true
end

defmodule Grafeas.V1.BatchCreateNotesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notes: [Grafeas.V1.Note.t()]
        }

  defstruct [:notes]

  field :notes, 1, repeated: true, type: Grafeas.V1.Note
end

defmodule Grafeas.V1.BatchCreateOccurrencesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          occurrences: [Grafeas.V1.Occurrence.t()]
        }

  defstruct [:parent, :occurrences]

  field :parent, 1, type: :string
  field :occurrences, 2, repeated: true, type: Grafeas.V1.Occurrence
end

defmodule Grafeas.V1.BatchCreateOccurrencesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          occurrences: [Grafeas.V1.Occurrence.t()]
        }

  defstruct [:occurrences]

  field :occurrences, 1, repeated: true, type: Grafeas.V1.Occurrence
end

defmodule Grafeas.V1.Grafeas.Service do
  @moduledoc false
  use GRPC.Service, name: "grafeas.v1.Grafeas"

  rpc :GetOccurrence, Grafeas.V1.GetOccurrenceRequest, Grafeas.V1.Occurrence

  rpc :ListOccurrences, Grafeas.V1.ListOccurrencesRequest, Grafeas.V1.ListOccurrencesResponse

  rpc :DeleteOccurrence, Grafeas.V1.DeleteOccurrenceRequest, Google.Protobuf.Empty

  rpc :CreateOccurrence, Grafeas.V1.CreateOccurrenceRequest, Grafeas.V1.Occurrence

  rpc :BatchCreateOccurrences,
      Grafeas.V1.BatchCreateOccurrencesRequest,
      Grafeas.V1.BatchCreateOccurrencesResponse

  rpc :UpdateOccurrence, Grafeas.V1.UpdateOccurrenceRequest, Grafeas.V1.Occurrence

  rpc :GetOccurrenceNote, Grafeas.V1.GetOccurrenceNoteRequest, Grafeas.V1.Note

  rpc :GetNote, Grafeas.V1.GetNoteRequest, Grafeas.V1.Note

  rpc :ListNotes, Grafeas.V1.ListNotesRequest, Grafeas.V1.ListNotesResponse

  rpc :DeleteNote, Grafeas.V1.DeleteNoteRequest, Google.Protobuf.Empty

  rpc :CreateNote, Grafeas.V1.CreateNoteRequest, Grafeas.V1.Note

  rpc :BatchCreateNotes, Grafeas.V1.BatchCreateNotesRequest, Grafeas.V1.BatchCreateNotesResponse

  rpc :UpdateNote, Grafeas.V1.UpdateNoteRequest, Grafeas.V1.Note

  rpc :ListNoteOccurrences,
      Grafeas.V1.ListNoteOccurrencesRequest,
      Grafeas.V1.ListNoteOccurrencesResponse
end

defmodule Grafeas.V1.Grafeas.Stub do
  @moduledoc false
  use GRPC.Stub, service: Grafeas.V1.Grafeas.Service
end
