package com.per.enums;

import java.util.Calendar;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-13  13:59
 */
public enum Weeks implements EnumerableValue {

    MONDAY(Calendar.MONDAY,"星期一"),

    TUESDAY(Calendar.TUESDAY,"星期二"),

    WEDNESDAY(Calendar.WEDNESDAY,"星期三"),

    THURSDAY(Calendar.THURSDAY,"星期四"),

    FRIDAY(Calendar.FRIDAY,"星期五"),

    SATURDAY(Calendar.SATURDAY,"星期六"),

    SUNDAY(Calendar.SUNDAY, "星期日");

    private int value;

    private String desc;

    @Override
    public int getValue() {
        return value;
    }

    public String getDesc() {
        return desc;
    }

    private Weeks(int value, String desc) {
        this.value = value;
        this.desc = desc;
    }

    public static Weeks getWeekByCalendarWeekInt(int week){
        switch(week){
            case Calendar.MONDAY:
                return Weeks.MONDAY;
            case Calendar.TUESDAY:
                return Weeks.TUESDAY;
            case Calendar.WEDNESDAY:
                return Weeks.WEDNESDAY;
            case Calendar.THURSDAY:
                return Weeks.THURSDAY;
            case Calendar.FRIDAY:
                return Weeks.FRIDAY;
            case Calendar.SATURDAY:
                return Weeks.SATURDAY;
            case Calendar.SUNDAY:
                return Weeks.SUNDAY;
            default: return null;
        }
    }

    public static class Converter extends BaseEnumValueConverter<Weeks>{}

    public static class ListConverter extends BaseListEnumConverter<Weeks>{}
}