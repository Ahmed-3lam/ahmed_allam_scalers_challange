class JobDetailsModel {
  JobDetailsData? data;

  JobDetailsModel({this.data});

  JobDetailsModel.fromJson(Map<String, dynamic> json) {
    data =
        json['data'] != null ? new JobDetailsData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class JobDetailsData {
  int? id;
  String? createdDate;
  List<int>? salaryRange;
  Location? location;
  bool? openForDiscussion;
  bool? commissionBased;
  Type? type;
  Status? status;
  Status? workplacePreference;
  Status? workplaceType;
  Status? vertical;
  Company? company;
  Null? isApplicationCanceled;
  IcpAnswers? icpAnswers;
  Tags? tags;
  String? uuid;
  String? title;
  String? updatedDate;
  Description? description;
  String? uniqueToken;
  String? createdSource;
  bool? isCurationRequested;
  Null? curationRequestedDateTime;
  bool? isDefault;
  int? order;
  int? jobBucket;
  List<Null>? genericCandidateApplications;

  JobDetailsData(
      {this.id,
      this.createdDate,
      this.salaryRange,
      this.location,
      this.openForDiscussion,
      this.commissionBased,
      this.type,
      this.status,
      this.workplacePreference,
      this.workplaceType,
      this.vertical,
      this.company,
      this.isApplicationCanceled,
      this.icpAnswers,
      this.tags,
      this.uuid,
      this.title,
      this.updatedDate,
      this.description,
      this.uniqueToken,
      this.createdSource,
      this.isCurationRequested,
      this.curationRequestedDateTime,
      this.isDefault,
      this.order,
      this.jobBucket,
      this.genericCandidateApplications});

  JobDetailsData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdDate = json['created_date'];
    salaryRange = json['salary_range'].cast<int>();
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    openForDiscussion = json['open_for_discussion'];
    commissionBased = json['commission_based'];
    type = json['type'] != null ? new Type.fromJson(json['type']) : null;
    status =
        json['status'] != null ? new Status.fromJson(json['status']) : null;
    workplacePreference = json['workplace_preference'] != null
        ? new Status.fromJson(json['workplace_preference'])
        : null;
    workplaceType = json['workplace_type'] != null
        ? new Status.fromJson(json['workplace_type'])
        : null;
    vertical =
        json['vertical'] != null ? new Status.fromJson(json['vertical']) : null;
    company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;
    isApplicationCanceled = json['isApplicationCanceled'];
    icpAnswers = json['icp_answers'] != null
        ? new IcpAnswers.fromJson(json['icp_answers'])
        : null;
    tags = json['tags'] != null ? Tags.fromJson(json['tags']) : null;
    uuid = json['uuid'];
    title = json['title'];
    updatedDate = json['updated_date'];
    description = json['description'] != null
        ? new Description.fromJson(json['description'])
        : null;
    uniqueToken = json['unique_token'];
    createdSource = json['created_source'];
    isCurationRequested = json['is_curation_requested'];
    curationRequestedDateTime = json['curation_requested_date_time'];
    isDefault = json['is_default'];
    order = json['order'];
    jobBucket = json['job_bucket'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_date'] = this.createdDate;
    data['salary_range'] = this.salaryRange;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['open_for_discussion'] = this.openForDiscussion;
    data['commission_based'] = this.commissionBased;
    if (this.type != null) {
      data['type'] = this.type!.toJson();
    }
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    if (this.workplacePreference != null) {
      data['workplace_preference'] = this.workplacePreference!.toJson();
    }
    if (this.workplaceType != null) {
      data['workplace_type'] = this.workplaceType!.toJson();
    }
    if (this.vertical != null) {
      data['vertical'] = this.vertical!.toJson();
    }
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    data['isApplicationCanceled'] = this.isApplicationCanceled;
    if (this.icpAnswers != null) {
      data['icp_answers'] = this.icpAnswers!.toJson();
    }

    data['uuid'] = this.uuid;
    data['title'] = this.title;
    data['updated_date'] = this.updatedDate;
    if (this.description != null) {
      data['description'] = this.description!.toJson();
    }
    data['unique_token'] = this.uniqueToken;
    data['created_source'] = this.createdSource;
    data['is_curation_requested'] = this.isCurationRequested;
    data['curation_requested_date_time'] = this.curationRequestedDateTime;
    data['is_default'] = this.isDefault;
    data['order'] = this.order;
    data['job_bucket'] = this.jobBucket;

    return data;
  }
}

class Location {
  int? id;
  String? nameAr;
  String? nameEn;
  int? listOrder;

  Location({this.id, this.nameAr, this.nameEn, this.listOrder});

  Location.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
    listOrder = json['list_order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name_ar'] = this.nameAr;
    data['name_en'] = this.nameEn;
    data['list_order'] = this.listOrder;
    return data;
  }
}

class Type {
  int? id;
  String? nameAr;
  String? nameEn;
  int? order;

  Type({this.id, this.nameAr, this.nameEn, this.order});

  Type.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name_ar'] = this.nameAr;
    data['name_en'] = this.nameEn;
    data['order'] = this.order;
    return data;
  }
}

class Status {
  int? id;
  String? nameAr;
  String? nameEn;

  Status({this.id, this.nameAr, this.nameEn});

  Status.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name_ar'] = this.nameAr;
    data['name_en'] = this.nameEn;
    return data;
  }
}

class Company {
  String? name;
  String? logo;
  String? industry;
  String? description;
  String? website;
  String? linkedin;
  String? twitter;

  Company(
      {this.name,
      this.logo,
      this.industry,
      this.description,
      this.website,
      this.linkedin,
      this.twitter});

  Company.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    logo = json['logo'];
    industry = json['industry'];
    description = json['description'];
    website = json['website'];
    linkedin = json['linkedin'];
    twitter = json['twitter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['logo'] = this.logo;
    data['industry'] = this.industry;
    data['description'] = this.description;
    data['website'] = this.website;
    data['linkedin'] = this.linkedin;
    data['twitter'] = this.twitter;
    return data;
  }
}

class IcpAnswers {
  List<JobRole>? jobRole;
  Status? commissionOffered;
  bool? relocationAllowance;

  IcpAnswers({this.jobRole, this.commissionOffered, this.relocationAllowance});

  IcpAnswers.fromJson(Map<String, dynamic> json) {
    if (json['job-role'] != null) {
      jobRole = <JobRole>[];
      json['job-role'].forEach((v) {
        jobRole!.add(new JobRole.fromJson(v));
      });
    }

    commissionOffered = json['commission-offered'] != null
        ? new Status.fromJson(json['commission-offered'])
        : null;
    relocationAllowance = json['relocation-allowance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.jobRole != null) {
      data['job-role'] = this.jobRole!.map((v) => v.toJson()).toList();
    }

    if (this.commissionOffered != null) {
      data['commission-offered'] = this.commissionOffered!.toJson();
    }
    data['relocation-allowance'] = this.relocationAllowance;
    return data;
  }
}

class JobRole {
  int? id;
  String? titleAr;
  String? titleEn;
  List<String>? nextQuestion;
  String? descriptionAr;
  String? descriptionEn;

  JobRole(
      {this.id,
      this.titleAr,
      this.titleEn,
      this.nextQuestion,
      this.descriptionAr,
      this.descriptionEn});

  JobRole.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleAr = json['title_ar'];
    titleEn = json['title_en'];
    nextQuestion = json['next_question'].cast<String>();
    descriptionAr = json['description_ar'];
    descriptionEn = json['description_en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title_ar'] = this.titleAr;
    data['title_en'] = this.titleEn;
    data['next_question'] = this.nextQuestion;
    data['description_ar'] = this.descriptionAr;
    data['description_en'] = this.descriptionEn;
    return data;
  }
}

class Tags {
  List<JobRole>? jobRole;

  Tags({
    this.jobRole,
  });

  Tags.fromJson(Map<String, dynamic> json) {
    if (json['job-role'] != null) {
      jobRole = <JobRole>[];
      json['job-role'].forEach((v) {
        jobRole!.add(new JobRole.fromJson(v));
      });
    }
  }
}

class Description {
  List<Ops>? ops;

  Description({this.ops});

  Description.fromJson(Map<String, dynamic> json) {
    if (json['ops'] != null) {
      ops = <Ops>[];
      json['ops'].forEach((v) {
        ops!.add(new Ops.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ops != null) {
      data['ops'] = this.ops!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Ops {
  String? insert;

  Ops({this.insert});

  Ops.fromJson(Map<String, dynamic> json) {
    insert = json['insert'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['insert'] = this.insert;
    return data;
  }
}
