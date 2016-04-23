package com.intellihire.service;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;
import java.util.Locale;

/**
 * Created by Klaus on 23.04.2016.
 */
@Path("/compute")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class ComputeService {
    private final String DEFAULT_FORMAT = "{'Sales': %.2f, 'Tester': %.2f"
                                            + ", Algorithms': %.2f, 'Developer': %.2f"
                                            + ", 'Architect': %.2f}";

    @GET
    @Path("/mock")
    public Response mock() {

        double[] values = {0.19, 0.43, 0.52, 0.87, 0.55};
        String output = String.format(Locale.ENGLISH, DEFAULT_FORMAT, values[0], values[1], values[2],
                values[3], values[4]);

        return Response.ok(output, MediaType.APPLICATION_JSON).build();
    }

    @POST
    @Path("/")
    public Response test(List<Integer> input) {

        String output = String.format(Locale.ENGLISH, DEFAULT_FORMAT, input.get(0), input.get(1), input.get(2),
                input.get(3), input.get(4));

        return Response.status(200).entity(output).build();
    }
}