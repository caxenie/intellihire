package com.intellihire.service;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Klaus on 23.04.2016.
 */
@Path("/compute")
public class ComputeService {
    private final String DEFAULT_FORMAT = "{\"Sales\": %.2f, \"Tester\": %.2f"
                                            + ", \"Algorithms\": %.2f, \"Developer\": %.2f"
                                            + ", \"Architect\": %.2f}";

    @GET
    @Path("/mock")
    @Produces({ MediaType.APPLICATION_JSON })
    public Response mock() {

        double[] values = {0.19, 0.43, 0.52, 0.87, 0.55};
        String output = String.format(Locale.ENGLISH, DEFAULT_FORMAT, values[0], values[1], values[2],
                values[3], values[4]);

        return Response.ok(output, MediaType.APPLICATION_JSON).build();
    }

    @POST
    @Path("/fake")
    @Consumes({ MediaType.APPLICATION_JSON })
    @Produces({ MediaType.APPLICATION_JSON })
    public Response test(String json) {
        Pattern pattern = Pattern.compile("\\s");
        Matcher matcher = pattern.matcher(json);
        json = matcher.replaceAll("");

        pattern = Pattern.compile("\\{\"input\":\\[([\\d, ]*)\\]\\}");
        matcher = pattern.matcher(json);
        matcher.matches();
        json = matcher.replaceAll(matcher.group(1));

        String[] input = json.split(",");
        double[] values = new double[input.length];
        for (int i = 0; i < input.length; i++) {
            values[i] = 1 / Double.parseDouble(input[i]);
        }
        String output = String.format(Locale.ENGLISH, DEFAULT_FORMAT, values[0], values[1], values[2],
                values[3], values[4]);
        return Response.status(200).entity(output).build();
    }

    @GET
    @Path("/test/get/{name}")
    @Produces({ MediaType.APPLICATION_JSON })
    public Response mock1(@PathParam("name") String name) {
        String[] input = JDBCTest.tryDatabase(name);
        double[] values = new double[input.length];
        for (int i = 0; i < input.length; i++) {
            values[i] = 1 / Double.parseDouble(input[i]);
        }
        String output = String.format(Locale.ENGLISH, DEFAULT_FORMAT, values[0], values[1], values[2],
                values[3], values[4]);
        return Response.status(200).entity(output).build();
    }

    @POST
    @Path("/test/put")
    @Consumes({ MediaType.APPLICATION_JSON })
    public Response test2(String json) {
        Pattern pattern = Pattern.compile("\\s");
        Matcher matcher = pattern.matcher(json);
        json = matcher.replaceAll("");

        pattern = Pattern.compile("\\{\"input\":\\[([\\d, ]*)\\]\\}");
        matcher = pattern.matcher(json);
        matcher.matches();
        json = matcher.replaceAll(matcher.group(1));

        String[] input = json.split(",");
        JDBCTest.insertIntoDB("1", input[0], input[1], input[2], input[3], input[4]);

        String output = "1";
        return Response.status(200).entity(output).build();
    }

}