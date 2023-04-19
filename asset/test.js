const { ObjectId } = require("mongodb");
const mongoose = require("mongoose");
const schema = mongoose.Schema;
// const bcrypt =require("bcrypt");

const teamMember = schema({
_id: { type: mongoose.Types.ObjectId },
name: { type: String },
phodneNo: { type: Number },
branch: { type: String },
email: { type: String, unique: true },
rollNo: { type: String },
hosteler: { type: String },
year: {type: String},
});
const memberInfo = mongoose.model("MemberInfo", teamMember);

const userSchema = new schema({
id: {
type: ObjectId,
},
team_name: {
type: String,
unique: true,
},
name: {
type: String,
},
email: {
type: String,
unique: true,
},
hosteler: {
type: String,
},
year: {
type: String,
},
branch: {
type: String,
},
rollNo: {
type: String,
},
phoneNo: {
type: Number,
},
team_member: {
type: teamMember,
},
});

const Userinfo = new mongoose.model("Userinfo", userSchema);

module.exports = { Userinfo, memberInfo };