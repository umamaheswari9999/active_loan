class Loandetails {
  final String loanNo;
  final String? customername;
  final String? prooftypenumber;
  final String? mobilenumber;
  final String? gender;
  final String lDSApploanstatus;
  final String id;
  final String? panno;
  final int? loanamount;
  final String? consentCreatedOn;
  final String creationDate;

  const Loandetails(this.loanNo, this.customername, this.lDSApploanstatus, this.id,this.panno,this.prooftypenumber,
      this.mobilenumber,this.gender,this.consentCreatedOn, this.loanamount, this.creationDate);
}