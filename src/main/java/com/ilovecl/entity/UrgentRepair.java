package com.ilovecl.entity;

import java.sql.Timestamp;

/**
 * 催单
 * @author qiuyongchen
 *         email:qiuych3@mail2.sysu.edu.cn
 *         copyRight:The MIT License (MIT)
 *         Copyright (c) 2016 邱永臣
 *         Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
 *         documentation files (the "Software"), to deal in the Software without restriction, including without limitation
 *         the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and
 *         to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 *         <p>
 *         The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
 *         Software.
 *         <p>
 *         THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 *         WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
 *         OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 *         OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 * @since 2016-05-29 14:48
 */
public class UrgentRepair {
    private int id; // 催单编号
    private int status; // 催单状态
    private int repairId; // 催单对应的报修单编号
    private int studentId; // 提交催单的学生的编号
    private Timestamp createTime; // 催单创建的时间

    public UrgentRepair(Integer id, Integer status, Integer repairId, Integer studentId, Timestamp createTime) {
        this.id = id;
        this.status = status;
        this.repairId = repairId;
        this.studentId = studentId;
        this.createTime = createTime;
    }

    public UrgentRepair(Integer status, Integer repairId, Integer studentId, Timestamp createTime) {
        this.status = status;
        this.repairId = repairId;
        this.studentId = studentId;
        this.createTime = createTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getRepairId() {
        return repairId;
    }

    public void setRepairId(int repairId) {
        this.repairId = repairId;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }
}
