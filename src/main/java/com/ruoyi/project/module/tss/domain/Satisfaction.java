/**
 * Copyright (C), $(YEAR),
 * FileName: Satisfaction
 * Author: zhangwei
 * Date: - 13:04
 * Description:
 * <author>     <time>      <version>      <desc>
 * 作者姓名    修改时间      版本号         描述
 */
package com.ruoyi.project.module.tss.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
/**
 * ()
 * @author zhangwei
 * @create 2020/4/7
 * @since 1.0.0
 */
public class Satisfaction {

    private int value;
    private String name;

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("value", getValue())
                .append("name", getName())
                .toString();
    }
}
