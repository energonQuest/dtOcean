/*
 * This source file is part of the osgOcean library
 *
 * Copyright (C) 2009 Kim Bale
 * Copyright (C) 2009 The University of Hull, UK
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free Software
 * Foundation; either version 3 of the License, or (at your option) any later
 * version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
 * http://www.gnu.org/copyleft/lesser.txt.
 */

#pragma once
#include <osg/Geometry>
#include <osg/Math>

class Cylinder : public osg::Geometry
{
protected:
   osg::ref_ptr<osg::Vec4Array> _colorArray;

public:
   Cylinder(void);

   Cylinder(float radius, float height, unsigned int steps, bool top, bool bottom);

   Cylinder(const Cylinder& copy, const osg::CopyOp& copyop=osg::CopyOp::SHALLOW_COPY);

protected:
   virtual ~Cylinder(void);

public:
   virtual void build(float radius, float height, unsigned int steps, bool top, bool bottom);

   void setColor(const osg::Vec4f& color);
};
