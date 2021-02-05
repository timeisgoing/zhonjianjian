package com.debug.middleware.server.dto;

import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotNull;

/**
 * @author: zhonglinsen
 * @date: 2019/3/15
 */
@Data
@ToString
public class RedPacketDto {

    private Integer userId;

    //指定多少人抢
    @NotNull
    private Integer total;

    //指定总金额-单位为分
    @NotNull
    private Integer amount;

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "RedPacketDto{" +
                "userId=" + userId +
                ", total=" + total +
                ", amount=" + amount +
                '}';
    }
}









































