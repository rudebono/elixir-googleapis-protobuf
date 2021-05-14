defmodule Google.Cloud.Talent.V4beta1.Resume.ResumeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RESUME_TYPE_UNSPECIFIED | :HRXML | :OTHER_RESUME_TYPE

  field :RESUME_TYPE_UNSPECIFIED, 0

  field :HRXML, 1

  field :OTHER_RESUME_TYPE, 2
end

defmodule Google.Cloud.Talent.V4beta1.Phone.PhoneType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PHONE_TYPE_UNSPECIFIED
          | :LANDLINE
          | :MOBILE
          | :FAX
          | :PAGER
          | :TTY_OR_TDD
          | :VOICEMAIL
          | :VIRTUAL
          | :VOIP
          | :MOBILE_OR_LANDLINE

  field :PHONE_TYPE_UNSPECIFIED, 0

  field :LANDLINE, 1

  field :MOBILE, 2

  field :FAX, 3

  field :PAGER, 4

  field :TTY_OR_TDD, 5

  field :VOICEMAIL, 6

  field :VIRTUAL, 7

  field :VOIP, 8

  field :MOBILE_OR_LANDLINE, 9
end

defmodule Google.Cloud.Talent.V4beta1.Profile.CustomAttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Talent.V4beta1.CustomAttribute.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Talent.V4beta1.CustomAttribute
end

defmodule Google.Cloud.Talent.V4beta1.Profile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          external_id: String.t(),
          source: String.t(),
          uri: String.t(),
          group_id: String.t(),
          is_hirable: Google.Protobuf.BoolValue.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          candidate_update_time: Google.Protobuf.Timestamp.t() | nil,
          resume_update_time: Google.Protobuf.Timestamp.t() | nil,
          resume: Google.Cloud.Talent.V4beta1.Resume.t() | nil,
          person_names: [Google.Cloud.Talent.V4beta1.PersonName.t()],
          addresses: [Google.Cloud.Talent.V4beta1.Address.t()],
          email_addresses: [Google.Cloud.Talent.V4beta1.Email.t()],
          phone_numbers: [Google.Cloud.Talent.V4beta1.Phone.t()],
          personal_uris: [Google.Cloud.Talent.V4beta1.PersonalUri.t()],
          additional_contact_info: [Google.Cloud.Talent.V4beta1.AdditionalContactInfo.t()],
          employment_records: [Google.Cloud.Talent.V4beta1.EmploymentRecord.t()],
          education_records: [Google.Cloud.Talent.V4beta1.EducationRecord.t()],
          skills: [Google.Cloud.Talent.V4beta1.Skill.t()],
          activities: [Google.Cloud.Talent.V4beta1.Activity.t()],
          publications: [Google.Cloud.Talent.V4beta1.Publication.t()],
          patents: [Google.Cloud.Talent.V4beta1.Patent.t()],
          certifications: [Google.Cloud.Talent.V4beta1.Certification.t()],
          applications: [String.t()],
          assignments: [String.t()],
          custom_attributes: %{
            String.t() => Google.Cloud.Talent.V4beta1.CustomAttribute.t() | nil
          },
          processed: boolean,
          keyword_snippet: String.t(),
          availability_signals: [Google.Cloud.Talent.V4beta1.AvailabilitySignal.t()],
          derived_addresses: [Google.Cloud.Talent.V4beta1.Location.t()]
        }

  defstruct [
    :name,
    :external_id,
    :source,
    :uri,
    :group_id,
    :is_hirable,
    :create_time,
    :update_time,
    :candidate_update_time,
    :resume_update_time,
    :resume,
    :person_names,
    :addresses,
    :email_addresses,
    :phone_numbers,
    :personal_uris,
    :additional_contact_info,
    :employment_records,
    :education_records,
    :skills,
    :activities,
    :publications,
    :patents,
    :certifications,
    :applications,
    :assignments,
    :custom_attributes,
    :processed,
    :keyword_snippet,
    :availability_signals,
    :derived_addresses
  ]

  field :name, 1, type: :string
  field :external_id, 2, type: :string
  field :source, 3, type: :string
  field :uri, 4, type: :string
  field :group_id, 5, type: :string
  field :is_hirable, 6, type: Google.Protobuf.BoolValue
  field :create_time, 7, type: Google.Protobuf.Timestamp
  field :update_time, 8, type: Google.Protobuf.Timestamp
  field :candidate_update_time, 67, type: Google.Protobuf.Timestamp
  field :resume_update_time, 68, type: Google.Protobuf.Timestamp
  field :resume, 53, type: Google.Cloud.Talent.V4beta1.Resume
  field :person_names, 11, repeated: true, type: Google.Cloud.Talent.V4beta1.PersonName
  field :addresses, 12, repeated: true, type: Google.Cloud.Talent.V4beta1.Address
  field :email_addresses, 13, repeated: true, type: Google.Cloud.Talent.V4beta1.Email
  field :phone_numbers, 14, repeated: true, type: Google.Cloud.Talent.V4beta1.Phone
  field :personal_uris, 15, repeated: true, type: Google.Cloud.Talent.V4beta1.PersonalUri

  field :additional_contact_info, 16,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.AdditionalContactInfo

  field :employment_records, 17,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.EmploymentRecord

  field :education_records, 18, repeated: true, type: Google.Cloud.Talent.V4beta1.EducationRecord
  field :skills, 19, repeated: true, type: Google.Cloud.Talent.V4beta1.Skill
  field :activities, 20, repeated: true, type: Google.Cloud.Talent.V4beta1.Activity
  field :publications, 21, repeated: true, type: Google.Cloud.Talent.V4beta1.Publication
  field :patents, 22, repeated: true, type: Google.Cloud.Talent.V4beta1.Patent
  field :certifications, 23, repeated: true, type: Google.Cloud.Talent.V4beta1.Certification
  field :applications, 47, repeated: true, type: :string
  field :assignments, 48, repeated: true, type: :string

  field :custom_attributes, 26,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.Profile.CustomAttributesEntry,
    map: true

  field :processed, 27, type: :bool
  field :keyword_snippet, 28, type: :string

  field :availability_signals, 70,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.AvailabilitySignal

  field :derived_addresses, 64, repeated: true, type: Google.Cloud.Talent.V4beta1.Location
end

defmodule Google.Cloud.Talent.V4beta1.AvailabilitySignal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Talent.V4beta1.AvailabilitySignalType.t(),
          last_update_time: Google.Protobuf.Timestamp.t() | nil,
          filter_satisfied: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [:type, :last_update_time, :filter_satisfied]

  field :type, 1, type: Google.Cloud.Talent.V4beta1.AvailabilitySignalType, enum: true
  field :last_update_time, 2, type: Google.Protobuf.Timestamp
  field :filter_satisfied, 3, type: Google.Protobuf.BoolValue
end

defmodule Google.Cloud.Talent.V4beta1.Resume do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          structured_resume: String.t(),
          resume_type: Google.Cloud.Talent.V4beta1.Resume.ResumeType.t()
        }

  defstruct [:structured_resume, :resume_type]

  field :structured_resume, 1, type: :string
  field :resume_type, 2, type: Google.Cloud.Talent.V4beta1.Resume.ResumeType, enum: true
end

defmodule Google.Cloud.Talent.V4beta1.PersonName.PersonStructuredName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          given_name: String.t(),
          preferred_name: String.t(),
          middle_initial: String.t(),
          family_name: String.t(),
          suffixes: [String.t()],
          prefixes: [String.t()]
        }

  defstruct [:given_name, :preferred_name, :middle_initial, :family_name, :suffixes, :prefixes]

  field :given_name, 1, type: :string
  field :preferred_name, 6, type: :string
  field :middle_initial, 2, type: :string
  field :family_name, 3, type: :string
  field :suffixes, 4, repeated: true, type: :string
  field :prefixes, 5, repeated: true, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.PersonName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          person_name: {atom, any},
          preferred_name: String.t()
        }

  defstruct [:person_name, :preferred_name]

  oneof :person_name, 0
  field :formatted_name, 1, type: :string, oneof: 0

  field :structured_name, 2,
    type: Google.Cloud.Talent.V4beta1.PersonName.PersonStructuredName,
    oneof: 0

  field :preferred_name, 3, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.Address do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          address: {atom, any},
          usage: Google.Cloud.Talent.V4beta1.ContactInfoUsage.t(),
          current: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [:address, :usage, :current]

  oneof :address, 0
  field :usage, 1, type: Google.Cloud.Talent.V4beta1.ContactInfoUsage, enum: true
  field :unstructured_address, 2, type: :string, oneof: 0
  field :structured_address, 3, type: Google.Type.PostalAddress, oneof: 0
  field :current, 4, type: Google.Protobuf.BoolValue
end

defmodule Google.Cloud.Talent.V4beta1.Email do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          usage: Google.Cloud.Talent.V4beta1.ContactInfoUsage.t(),
          email_address: String.t()
        }

  defstruct [:usage, :email_address]

  field :usage, 1, type: Google.Cloud.Talent.V4beta1.ContactInfoUsage, enum: true
  field :email_address, 2, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.Phone do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          usage: Google.Cloud.Talent.V4beta1.ContactInfoUsage.t(),
          type: Google.Cloud.Talent.V4beta1.Phone.PhoneType.t(),
          number: String.t(),
          when_available: String.t()
        }

  defstruct [:usage, :type, :number, :when_available]

  field :usage, 1, type: Google.Cloud.Talent.V4beta1.ContactInfoUsage, enum: true
  field :type, 2, type: Google.Cloud.Talent.V4beta1.Phone.PhoneType, enum: true
  field :number, 3, type: :string
  field :when_available, 4, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.PersonalUri do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct [:uri]

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.AdditionalContactInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          usage: Google.Cloud.Talent.V4beta1.ContactInfoUsage.t(),
          name: String.t(),
          contact_id: String.t()
        }

  defstruct [:usage, :name, :contact_id]

  field :usage, 1, type: Google.Cloud.Talent.V4beta1.ContactInfoUsage, enum: true
  field :name, 2, type: :string
  field :contact_id, 3, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.EmploymentRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_date: Google.Type.Date.t() | nil,
          end_date: Google.Type.Date.t() | nil,
          employer_name: String.t(),
          division_name: String.t(),
          address: Google.Cloud.Talent.V4beta1.Address.t() | nil,
          job_title: String.t(),
          job_description: String.t(),
          is_supervisor: Google.Protobuf.BoolValue.t() | nil,
          is_self_employed: Google.Protobuf.BoolValue.t() | nil,
          is_current: Google.Protobuf.BoolValue.t() | nil,
          job_title_snippet: String.t(),
          job_description_snippet: String.t(),
          employer_name_snippet: String.t()
        }

  defstruct [
    :start_date,
    :end_date,
    :employer_name,
    :division_name,
    :address,
    :job_title,
    :job_description,
    :is_supervisor,
    :is_self_employed,
    :is_current,
    :job_title_snippet,
    :job_description_snippet,
    :employer_name_snippet
  ]

  field :start_date, 1, type: Google.Type.Date
  field :end_date, 2, type: Google.Type.Date
  field :employer_name, 3, type: :string
  field :division_name, 4, type: :string
  field :address, 5, type: Google.Cloud.Talent.V4beta1.Address
  field :job_title, 6, type: :string
  field :job_description, 7, type: :string
  field :is_supervisor, 8, type: Google.Protobuf.BoolValue
  field :is_self_employed, 9, type: Google.Protobuf.BoolValue
  field :is_current, 10, type: Google.Protobuf.BoolValue
  field :job_title_snippet, 11, type: :string
  field :job_description_snippet, 12, type: :string
  field :employer_name_snippet, 13, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.EducationRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          degree: {atom, any},
          start_date: Google.Type.Date.t() | nil,
          end_date: Google.Type.Date.t() | nil,
          expected_graduation_date: Google.Type.Date.t() | nil,
          school_name: String.t(),
          address: Google.Cloud.Talent.V4beta1.Address.t() | nil,
          description: String.t(),
          is_current: Google.Protobuf.BoolValue.t() | nil,
          school_name_snippet: String.t(),
          degree_snippet: String.t()
        }

  defstruct [
    :degree,
    :start_date,
    :end_date,
    :expected_graduation_date,
    :school_name,
    :address,
    :description,
    :is_current,
    :school_name_snippet,
    :degree_snippet
  ]

  oneof :degree, 0
  field :start_date, 1, type: Google.Type.Date
  field :end_date, 2, type: Google.Type.Date
  field :expected_graduation_date, 3, type: Google.Type.Date
  field :school_name, 4, type: :string
  field :address, 5, type: Google.Cloud.Talent.V4beta1.Address
  field :degree_description, 6, type: :string, oneof: 0
  field :structured_degree, 7, type: Google.Cloud.Talent.V4beta1.Degree, oneof: 0
  field :description, 8, type: :string
  field :is_current, 9, type: Google.Protobuf.BoolValue
  field :school_name_snippet, 10, type: :string
  field :degree_snippet, 11, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.Degree do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          degree_type: Google.Cloud.Talent.V4beta1.DegreeType.t(),
          degree_name: String.t(),
          fields_of_study: [String.t()]
        }

  defstruct [:degree_type, :degree_name, :fields_of_study]

  field :degree_type, 1, type: Google.Cloud.Talent.V4beta1.DegreeType, enum: true
  field :degree_name, 2, type: :string
  field :fields_of_study, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.Activity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          description: String.t(),
          uri: String.t(),
          create_date: Google.Type.Date.t() | nil,
          update_date: Google.Type.Date.t() | nil,
          team_members: [String.t()],
          skills_used: [Google.Cloud.Talent.V4beta1.Skill.t()],
          activity_name_snippet: String.t(),
          activity_description_snippet: String.t(),
          skills_used_snippet: [String.t()]
        }

  defstruct [
    :display_name,
    :description,
    :uri,
    :create_date,
    :update_date,
    :team_members,
    :skills_used,
    :activity_name_snippet,
    :activity_description_snippet,
    :skills_used_snippet
  ]

  field :display_name, 1, type: :string
  field :description, 2, type: :string
  field :uri, 3, type: :string
  field :create_date, 4, type: Google.Type.Date
  field :update_date, 5, type: Google.Type.Date
  field :team_members, 6, repeated: true, type: :string
  field :skills_used, 7, repeated: true, type: Google.Cloud.Talent.V4beta1.Skill
  field :activity_name_snippet, 8, type: :string
  field :activity_description_snippet, 9, type: :string
  field :skills_used_snippet, 10, repeated: true, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.Publication do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authors: [String.t()],
          title: String.t(),
          description: String.t(),
          journal: String.t(),
          volume: String.t(),
          publisher: String.t(),
          publication_date: Google.Type.Date.t() | nil,
          publication_type: String.t(),
          isbn: String.t()
        }

  defstruct [
    :authors,
    :title,
    :description,
    :journal,
    :volume,
    :publisher,
    :publication_date,
    :publication_type,
    :isbn
  ]

  field :authors, 1, repeated: true, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :journal, 4, type: :string
  field :volume, 5, type: :string
  field :publisher, 6, type: :string
  field :publication_date, 7, type: Google.Type.Date
  field :publication_type, 8, type: :string
  field :isbn, 9, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.Patent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          inventors: [String.t()],
          patent_status: String.t(),
          patent_status_date: Google.Type.Date.t() | nil,
          patent_filing_date: Google.Type.Date.t() | nil,
          patent_office: String.t(),
          patent_number: String.t(),
          patent_description: String.t(),
          skills_used: [Google.Cloud.Talent.V4beta1.Skill.t()]
        }

  defstruct [
    :display_name,
    :inventors,
    :patent_status,
    :patent_status_date,
    :patent_filing_date,
    :patent_office,
    :patent_number,
    :patent_description,
    :skills_used
  ]

  field :display_name, 1, type: :string
  field :inventors, 2, repeated: true, type: :string
  field :patent_status, 3, type: :string
  field :patent_status_date, 4, type: Google.Type.Date
  field :patent_filing_date, 5, type: Google.Type.Date
  field :patent_office, 6, type: :string
  field :patent_number, 7, type: :string
  field :patent_description, 8, type: :string
  field :skills_used, 9, repeated: true, type: Google.Cloud.Talent.V4beta1.Skill
end
