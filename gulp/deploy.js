'use strict';

var gulp = require('gulp');
var conf = require('./conf');
var awsPublish = require('gulp-awspublish');
var awsCred = require('../aws-credentials.json');

gulp.task('deploy', ['build'], function() {
  // http://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/S3.html#constructor-property
  var publisher = awsPublish.create({
    accessKeyId: awsCred.accessKeyId,
    secretAccessKey: awsCred.secretAccessKey,
    params: {
      Bucket: 'samerchahine.com'
    }
  });

  return gulp.src(conf.paths.dist + '/**')
    .pipe(publisher.publish())
    .pipe(publisher.sync())
    .pipe(publisher.cache());
});
