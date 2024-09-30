class AllJobsModel {
  AllJobsModel({
    this.data,
    this.count,
    this.nextLink,
    this.prevLink,
  });

  AllJobsModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(JobsData.fromJson(v));
      });
    }
    count = json['count'];
    nextLink = json['next_link'];
    prevLink = json['prev_link'];
  }
  List<JobsData>? data;
  num? count;
  dynamic nextLink;
  dynamic prevLink;
}

class JobsData {
  JobsData({
    this.job,
  });

  JobsData.fromJson(dynamic json) {
    job = json['job'] != null ? Job.fromJson(json['job']) : null;
  }
  Job? job;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (job != null) {
      map['job'] = job?.toJson();
    }
    return map;
  }
}

class Job {
  Job({
    this.id,
    this.createdDate,
    this.salaryRange,
    this.benefits,
    this.location,
    this.openForDiscussion,
    this.commissionBased,
    this.type,
    this.status,
    this.workplacePreference,
    this.workplaceType,
    this.vertical,
    this.isPredefinedListSet,
    this.company,
    this.icpAnswers,
    this.uuid,
    this.title,
    this.updatedDate,
    this.filters,
    this.uniqueToken,
    this.createdSource,
    this.isCurationRequested,
    this.curationRequestedDateTime,
    this.cancellationReason,
    this.editAttempts,
    this.isDefault,
    this.order,
    this.jobBucket,
    this.genericCandidateApplications,
  });

  Job.fromJson(dynamic json) {
    id = json['id'];
    createdDate = json['created_date'];
    salaryRange =
        json['salary_range'] != null ? json['salary_range'].cast<num>() : [];
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    openForDiscussion = json['open_for_discussion'];
    commissionBased = json['commission_based'];
    type = json['type'] != null ? Type.fromJson(json['type']) : null;
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
    workplacePreference = json['workplace_preference'] != null
        ? WorkplacePreference.fromJson(json['workplace_preference'])
        : null;
    workplaceType = json['workplace_type'] != null
        ? WorkplaceType.fromJson(json['workplace_type'])
        : null;
    vertical =
        json['vertical'] != null ? Vertical.fromJson(json['vertical']) : null;
    isPredefinedListSet = json['is_predefined_list_set'];
    company =
        json['company'] != null ? Company.fromJson(json['company']) : null;
    icpAnswers = json['icp_answers'] != null
        ? IcpAnswers.fromJson(json['icp_answers'])
        : null;
    uuid = json['uuid'];
    title = json['title'];
    updatedDate = json['updated_date'];
    filters =
        json['filters'] != null ? Filters.fromJson(json['filters']) : null;
    uniqueToken = json['unique_token'];
    createdSource = json['created_source'];
    isCurationRequested = json['is_curation_requested'];
    curationRequestedDateTime = json['curation_requested_date_time'];
    cancellationReason = json['cancellation_reason'];
    editAttempts = json['edit_attempts'];
    isDefault = json['is_default'];
    order = json['order'];
    jobBucket = json['job_bucket'];
  }
  num? id;
  String? createdDate;
  List<num>? salaryRange;
  List<dynamic>? benefits;
  Location? location;
  bool? openForDiscussion;
  bool? commissionBased;
  Type? type;
  Status? status;
  WorkplacePreference? workplacePreference;
  WorkplaceType? workplaceType;
  Vertical? vertical;
  bool? isPredefinedListSet;
  Company? company;
  IcpAnswers? icpAnswers;
  String? uuid;
  String? title;
  String? updatedDate;
  Filters? filters;
  String? uniqueToken;
  String? createdSource;
  bool? isCurationRequested;
  dynamic curationRequestedDateTime;
  dynamic cancellationReason;
  num? editAttempts;
  bool? isDefault;
  num? order;
  dynamic jobBucket;
  List<dynamic>? genericCandidateApplications;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_date'] = createdDate;
    map['salary_range'] = salaryRange;
    if (benefits != null) {
      map['benefits'] = benefits?.map((v) => v.toJson()).toList();
    }
    if (location != null) {
      map['location'] = location?.toJson();
    }
    map['open_for_discussion'] = openForDiscussion;
    map['commission_based'] = commissionBased;
    if (type != null) {
      map['type'] = type?.toJson();
    }
    if (status != null) {
      map['status'] = status?.toJson();
    }
    if (workplacePreference != null) {
      map['workplace_preference'] = workplacePreference?.toJson();
    }
    if (workplaceType != null) {
      map['workplace_type'] = workplaceType?.toJson();
    }
    if (vertical != null) {
      map['vertical'] = vertical?.toJson();
    }
    map['is_predefined_list_set'] = isPredefinedListSet;
    if (company != null) {
      map['company'] = company?.toJson();
    }
    if (icpAnswers != null) {
      map['icp_answers'] = icpAnswers?.toJson();
    }
    map['uuid'] = uuid;
    map['title'] = title;
    map['updated_date'] = updatedDate;
    if (filters != null) {
      map['filters'] = filters?.toJson();
    }
    map['unique_token'] = uniqueToken;
    map['created_source'] = createdSource;
    map['is_curation_requested'] = isCurationRequested;
    map['curation_requested_date_time'] = curationRequestedDateTime;
    map['cancellation_reason'] = cancellationReason;
    map['edit_attempts'] = editAttempts;
    map['is_default'] = isDefault;
    map['order'] = order;
    map['job_bucket'] = jobBucket;
    if (genericCandidateApplications != null) {
      map['generic_candidate_applications'] =
          genericCandidateApplications?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Filters {
  Filters({
    this.test,
  });

  Filters.fromJson(dynamic json) {
    test = json['test'];
  }
  num? test;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['test'] = test;
    return map;
  }
}

class IcpAnswers {
  IcpAnswers({
    this.jobrole,
    this.typeofsales,
    this.commissionoffered,
    this.relocationallowance,
  });

  IcpAnswers.fromJson(dynamic json) {
    if (json['job-role'] != null) {
      jobrole = [];
      json['job-role'].forEach((v) {
        jobrole?.add(JobRole.fromJson(v));
      });
    }
    if (json['type-of-sales'] != null) {
      typeofsales = [];
      json['type-of-sales'].forEach((v) {
        typeofsales?.add(TypeOfSales.fromJson(v));
      });
    }
    commissionoffered = json['commission-offered'] != null
        ? CommissionOffered.fromJson(json['commission-offered'])
        : null;
    relocationallowance = json['relocation-allowance'];
  }
  List<JobRole>? jobrole;
  List<TypeOfSales>? typeofsales;
  CommissionOffered? commissionoffered;
  bool? relocationallowance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (jobrole != null) {
      map['job-role'] = jobrole?.map((v) => v.toJson()).toList();
    }
    if (typeofsales != null) {
      map['type-of-sales'] = typeofsales?.map((v) => v.toJson()).toList();
    }
    if (commissionoffered != null) {
      map['commission-offered'] = commissionoffered?.toJson();
    }
    map['relocation-allowance'] = relocationallowance;
    return map;
  }
}

class CommissionOffered {
  CommissionOffered({
    this.id,
    this.titleAr,
    this.titleEn,
  });

  CommissionOffered.fromJson(dynamic json) {
    id = json['id'];
    titleAr = json['title_ar'];
    titleEn = json['title_en'];
  }
  num? id;
  String? titleAr;
  String? titleEn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title_ar'] = titleAr;
    map['title_en'] = titleEn;
    return map;
  }
}

class TypeOfSales {
  TypeOfSales({
    this.id,
    this.titleAr,
    this.titleEn,
    this.nextQuestion,
    this.descriptionAr,
    this.descriptionEn,
  });

  TypeOfSales.fromJson(dynamic json) {
    id = json['id'];
    titleAr = json['title_ar'];
    titleEn = json['title_en'];
    nextQuestion = json['next_question'] != null
        ? json['next_question'].cast<String>()
        : [];
    descriptionAr = json['description_ar'];
    descriptionEn = json['description_en'];
  }
  num? id;
  String? titleAr;
  String? titleEn;
  List<String>? nextQuestion;
  String? descriptionAr;
  String? descriptionEn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title_ar'] = titleAr;
    map['title_en'] = titleEn;
    map['next_question'] = nextQuestion;
    map['description_ar'] = descriptionAr;
    map['description_en'] = descriptionEn;
    return map;
  }
}

class JobRole {
  JobRole({
    this.id,
    this.titleAr,
    this.titleEn,
    this.nextQuestion,
    this.descriptionAr,
    this.descriptionEn,
  });

  JobRole.fromJson(dynamic json) {
    id = json['id'];
    titleAr = json['title_ar'];
    titleEn = json['title_en'];
    nextQuestion = json['next_question'] != null
        ? json['next_question'].cast<String>()
        : [];
    descriptionAr = json['description_ar'];
    descriptionEn = json['description_en'];
  }
  num? id;
  String? titleAr;
  String? titleEn;
  List<String>? nextQuestion;
  String? descriptionAr;
  String? descriptionEn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title_ar'] = titleAr;
    map['title_en'] = titleEn;
    map['next_question'] = nextQuestion;
    map['description_ar'] = descriptionAr;
    map['description_en'] = descriptionEn;
    return map;
  }
}

class Company {
  Company({
    this.name,
    this.logo,
  });

  Company.fromJson(dynamic json) {
    name = json['name'];
    logo = json['logo'];
  }
  String? name;
  String? logo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['logo'] = logo;
    return map;
  }
}

class Vertical {
  Vertical({
    this.id,
    this.nameAr,
    this.nameEn,
  });

  Vertical.fromJson(dynamic json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
  }
  num? id;
  String? nameAr;
  String? nameEn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_ar'] = nameAr;
    map['name_en'] = nameEn;
    return map;
  }
}

class WorkplaceType {
  WorkplaceType({
    this.id,
    this.nameAr,
    this.nameEn,
  });

  WorkplaceType.fromJson(dynamic json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
  }
  num? id;
  String? nameAr;
  String? nameEn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_ar'] = nameAr;
    map['name_en'] = nameEn;
    return map;
  }
}

class WorkplacePreference {
  WorkplacePreference({
    this.id,
    this.nameAr,
    this.nameEn,
  });

  WorkplacePreference.fromJson(dynamic json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
  }
  num? id;
  String? nameAr;
  String? nameEn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_ar'] = nameAr;
    map['name_en'] = nameEn;
    return map;
  }
}

class Status {
  Status({
    this.id,
    this.nameAr,
    this.nameEn,
  });

  Status.fromJson(dynamic json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
  }
  num? id;
  String? nameAr;
  String? nameEn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_ar'] = nameAr;
    map['name_en'] = nameEn;
    return map;
  }
}

class Type {
  Type({
    this.id,
    this.nameAr,
    this.nameEn,
    this.order,
  });

  Type.fromJson(dynamic json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
    order = json['order'];
  }
  num? id;
  String? nameAr;
  String? nameEn;
  num? order;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_ar'] = nameAr;
    map['name_en'] = nameEn;
    map['order'] = order;
    return map;
  }
}

class Location {
  Location({
    this.id,
    this.nameAr,
    this.nameEn,
    this.listOrder,
  });

  Location.fromJson(dynamic json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
    listOrder = json['list_order'];
  }
  num? id;
  String? nameAr;
  String? nameEn;
  num? listOrder;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_ar'] = nameAr;
    map['name_en'] = nameEn;
    map['list_order'] = listOrder;
    return map;
  }
}
