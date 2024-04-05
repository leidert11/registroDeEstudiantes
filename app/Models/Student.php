<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'lastName', 'cedula', 'photo'];

    public function courses()
    {
        return $this->belongsToMany(Course::class, 'student_courses');

    }
    public function grades()
    {
        return $this->hasMany(Grade::class);
    }

}
