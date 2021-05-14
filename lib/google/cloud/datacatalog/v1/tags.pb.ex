defmodule Google.Cloud.Datacatalog.V1.FieldType.PrimitiveType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PRIMITIVE_TYPE_UNSPECIFIED | :DOUBLE | :STRING | :BOOL | :TIMESTAMP

  field :PRIMITIVE_TYPE_UNSPECIFIED, 0

  field :DOUBLE, 1

  field :STRING, 2

  field :BOOL, 3

  field :TIMESTAMP, 4
end

defmodule Google.Cloud.Datacatalog.V1.Tag.FieldsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Datacatalog.V1.TagField.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Datacatalog.V1.TagField
end

defmodule Google.Cloud.Datacatalog.V1.Tag do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: {atom, any},
          name: String.t(),
          template: String.t(),
          template_display_name: String.t(),
          fields: %{String.t() => Google.Cloud.Datacatalog.V1.TagField.t() | nil}
        }

  defstruct [:scope, :name, :template, :template_display_name, :fields]

  oneof :scope, 0
  field :name, 1, type: :string
  field :template, 2, type: :string
  field :template_display_name, 5, type: :string
  field :column, 4, type: :string, oneof: 0
  field :fields, 3, repeated: true, type: Google.Cloud.Datacatalog.V1.Tag.FieldsEntry, map: true
end

defmodule Google.Cloud.Datacatalog.V1.TagField.EnumValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t()
        }

  defstruct [:display_name]

  field :display_name, 1, type: :string
end

defmodule Google.Cloud.Datacatalog.V1.TagField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: {atom, any},
          display_name: String.t(),
          order: integer
        }

  defstruct [:kind, :display_name, :order]

  oneof :kind, 0
  field :display_name, 1, type: :string
  field :double_value, 2, type: :double, oneof: 0
  field :string_value, 3, type: :string, oneof: 0
  field :bool_value, 4, type: :bool, oneof: 0
  field :timestamp_value, 5, type: Google.Protobuf.Timestamp, oneof: 0
  field :enum_value, 6, type: Google.Cloud.Datacatalog.V1.TagField.EnumValue, oneof: 0
  field :order, 7, type: :int32
end

defmodule Google.Cloud.Datacatalog.V1.TagTemplate.FieldsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Datacatalog.V1.TagTemplateField.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Datacatalog.V1.TagTemplateField
end

defmodule Google.Cloud.Datacatalog.V1.TagTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          fields: %{String.t() => Google.Cloud.Datacatalog.V1.TagTemplateField.t() | nil}
        }

  defstruct [:name, :display_name, :fields]

  field :name, 1, type: :string
  field :display_name, 2, type: :string

  field :fields, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.TagTemplate.FieldsEntry,
    map: true
end

defmodule Google.Cloud.Datacatalog.V1.TagTemplateField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          type: Google.Cloud.Datacatalog.V1.FieldType.t() | nil,
          is_required: boolean,
          description: String.t(),
          order: integer
        }

  defstruct [:name, :display_name, :type, :is_required, :description, :order]

  field :name, 6, type: :string
  field :display_name, 1, type: :string
  field :type, 2, type: Google.Cloud.Datacatalog.V1.FieldType
  field :is_required, 3, type: :bool
  field :description, 4, type: :string
  field :order, 5, type: :int32
end

defmodule Google.Cloud.Datacatalog.V1.FieldType.EnumType.EnumValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t()
        }

  defstruct [:display_name]

  field :display_name, 1, type: :string
end

defmodule Google.Cloud.Datacatalog.V1.FieldType.EnumType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_values: [Google.Cloud.Datacatalog.V1.FieldType.EnumType.EnumValue.t()]
        }

  defstruct [:allowed_values]

  field :allowed_values, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.FieldType.EnumType.EnumValue
end

defmodule Google.Cloud.Datacatalog.V1.FieldType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type_decl: {atom, any}
        }

  defstruct [:type_decl]

  oneof :type_decl, 0

  field :primitive_type, 1,
    type: Google.Cloud.Datacatalog.V1.FieldType.PrimitiveType,
    enum: true,
    oneof: 0

  field :enum_type, 2, type: Google.Cloud.Datacatalog.V1.FieldType.EnumType, oneof: 0
end
