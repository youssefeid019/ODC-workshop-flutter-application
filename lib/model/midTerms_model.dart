class MidtermsModel {
	String? code;
	String? message;
	List<Data>? data;

	MidtermsModel({this.code, this.message, this.data});

	MidtermsModel.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		message = json['message'];
		if (json['data'] != null) {
			data = <Data>[];
			json['data'].forEach((v) { data!.add(new Data.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['code'] = this.code;
		data['message'] = this.message;
		if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class Data {
	int? id;
	String? examSubject;
	String? examDate;
	String? examStartTime;
	String? examEndTime;
	bool? finaal;

	Data({this.id, this.examSubject, this.examDate, this.examStartTime, this.examEndTime, this.finaal});

	Data.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		examSubject = json['examSubject'];
		examDate = json['examDate'];
		examStartTime = json['examStartTime'];
		examEndTime = json['examEndTime'];
		finaal = json['final'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['examSubject'] = this.examSubject;
		data['examDate'] = this.examDate;
		data['examStartTime'] = this.examStartTime;
		data['examEndTime'] = this.examEndTime;
		data['final'] = this.finaal;
		return data;
	}
}
