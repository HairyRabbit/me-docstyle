// -*- mode: js -*-
// -*- coding: utf-8 -*-

var gulp   = require('gulp')
var stylus = require('gulp-stylus')



var src = 'src/main.styl'


function defaultTask(done) {
    return gulp.src(src)
	.pipe(stylus())
	.pipe(gulp.dest('tmp'))
}


gulp.task('default', defaultTask)
gulp.watch(src, defaultTask)
